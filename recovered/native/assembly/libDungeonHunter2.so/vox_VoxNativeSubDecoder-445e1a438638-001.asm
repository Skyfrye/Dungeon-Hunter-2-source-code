; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008841f8, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoderD1Ev
; demangled: vox::VoxNativeSubDecoder::~VoxNativeSubDecoder()
; decoder-mode: arm
008841f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008841fc, declared_size=236, range_size=236, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder25EmulateMixSegmentInBufferEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer(int, vox::SegmentState*)
; decoder-mode: arm
008841fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00884200  f2 c1 d0 e1                                      ldrsh ip, [r0, #0x12]
00884204  fa 30 d0 e1                                      ldrsh r3, [r0, #0xa]
00884208  02 40 a0 e1                                      mov r4, r2
0088420c  cc 21 a0 e1                                      asr r2, ip, #3
00884210  01 00 a0 e1                                      mov r0, r1
00884214  93 02 01 e0                                      mul r1, r3, r2
00884218  21 28 ea eb                                      bl #0x30e2a4
0088421c  28 70 94 e5                                      ldr r7, [r4, #0x28]
00884220  00 60 a0 e1                                      mov r6, r0
00884224  38 80 94 e5                                      ldr r8, [r4, #0x38]
00884228  07 30 60 e0                                      rsb r3, r0, r7
0088422c  00 00 53 e3                                      cmp r3, #0
00884230  28 30 84 e5                                      str r3, [r4, #0x28]
00884234  00 30 a0 b3                                      movlt r3, #0
00884238  28 30 84 b5                                      strlt r3, [r4, #0x28]
0088423c  00 00 57 e3                                      cmp r7, #0
00884240  34 00 94 e5                                      ldr r0, [r4, #0x34]
00884244  30 50 94 e5                                      ldr r5, [r4, #0x30]
00884248  03 00 00 da                                      ble #0x88425c
0088424c  07 00 56 e1                                      cmp r6, r7
00884250  06 70 a0 b1                                      movlt r7, r6
00884254  07 70 a0 a1                                      movge r7, r7
00884258  06 60 67 e0                                      rsb r6, r7, r6
0088425c  00 00 55 e3                                      cmp r5, #0
00884260  04 70 94 d5                                      ldrle r7, [r4, #4]
00884264  0a 00 00 da                                      ble #0x884294
00884268  05 00 56 e1                                      cmp r6, r5
0088426c  16 00 00 ba                                      blt #0x8842cc
00884270  04 70 94 e5                                      ldr r7, [r4, #4]
00884274  05 60 a0 e1                                      mov r6, r5
00884278  05 50 66 e0                                      rsb r5, r6, r5
0088427c  96 80 26 e0                                      mla r6, r6, r0, r8
00884280  00 00 55 e3                                      cmp r5, #0
00884284  30 50 84 e5                                      str r5, [r4, #0x30]
00884288  00 50 a0 b3                                      movlt r5, #0
0088428c  30 50 84 b5                                      strlt r5, [r4, #0x30]
00884290  38 60 84 e5                                      str r6, [r4, #0x38]
00884294  00 00 55 e3                                      cmp r5, #0
00884298  07 00 00 1a                                      bne #0x8842bc
0088429c  00 00 50 e3                                      cmp r0, #0
008842a0  01 30 a0 b3                                      movlt r3, #1
008842a4  38 50 84 e5                                      str r5, [r4, #0x38]
008842a8  28 50 84 e5                                      str r5, [r4, #0x28]
008842ac  2c 50 84 e5                                      str r5, [r4, #0x2c]
008842b0  30 50 84 e5                                      str r5, [r4, #0x30]
008842b4  34 50 84 e5                                      str r5, [r4, #0x34]
008842b8  24 30 84 b5                                      strlt r3, [r4, #0x24]
008842bc  03 00 57 e3                                      cmp r7, #3
008842c0  01 30 a0 03                                      moveq r3, #1
008842c4  24 30 84 05                                      streq r3, [r4, #0x24]
008842c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008842cc  04 70 94 e5                                      ldr r7, [r4, #4]
008842d0  03 00 57 e3                                      cmp r7, #3
008842d4  e7 ff ff 1a                                      bne #0x884278
008842d8  00 00 68 e2                                      rsb r0, r8, #0
008842dc  06 10 a0 e1                                      mov r1, r6
008842e0  ef 27 ea eb                                      bl #0x30e2a4
008842e4  e3 ff ff ea                                      b #0x884278

; FUNCTION 0x008842e8, declared_size=208, range_size=208, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder26EmulateMixMultipleSegmentsEi
; demangled: vox::VoxNativeSubDecoder::EmulateMixMultipleSegments(int)
; decoder-mode: arm
008842e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008842ec  bc 30 90 e5                                      ldr r3, [r0, #0xbc]
008842f0  00 40 a0 e1                                      mov r4, r0
008842f4  01 50 a0 e1                                      mov r5, r1
008842f8  02 00 53 e3                                      cmp r3, #2
008842fc  00 60 a0 d3                                      movle r6, #0
00884300  10 00 00 ca                                      bgt #0x884348
00884304  00 31 94 e5                                      ldr r3, [r4, #0x100]
00884308  02 00 53 e3                                      cmp r3, #2
0088430c  1a 00 00 ca                                      bgt #0x88437c
00884310  05 10 a0 e1                                      mov r1, r5
00884314  00 30 94 e5                                      ldr r3, [r4]
00884318  04 00 a0 e1                                      mov r0, r4
0088431c  0f e0 a0 e1                                      mov lr, pc
00884320  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00884324  00 50 a0 e1                                      mov r5, r0
00884328  05 10 a0 e1                                      mov r1, r5
0088432c  04 00 a0 e1                                      mov r0, r4
00884330  12 2e 84 e2                                      add r2, r4, #0x120
00884334  b0 ff ff eb                                      bl #0x8841fc
00884338  06 00 55 e1                                      cmp r5, r6
0088433c  05 00 a0 a1                                      movge r0, r5
00884340  06 00 a0 b1                                      movlt r0, r6
00884344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00884348  98 70 80 e2                                      add r7, r0, #0x98
0088434c  00 30 90 e5                                      ldr r3, [r0]
00884350  07 20 a0 e1                                      mov r2, r7
00884354  0f e0 a0 e1                                      mov lr, pc
00884358  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0088435c  00 60 a0 e1                                      mov r6, r0
00884360  06 10 a0 e1                                      mov r1, r6
00884364  04 00 a0 e1                                      mov r0, r4
00884368  07 20 a0 e1                                      mov r2, r7
0088436c  a2 ff ff eb                                      bl #0x8841fc
00884370  00 31 94 e5                                      ldr r3, [r4, #0x100]
00884374  02 00 53 e3                                      cmp r3, #2
00884378  e4 ff ff da                                      ble #0x884310
0088437c  dc 70 84 e2                                      add r7, r4, #0xdc
00884380  05 10 a0 e1                                      mov r1, r5
00884384  07 20 a0 e1                                      mov r2, r7
00884388  00 30 94 e5                                      ldr r3, [r4]
0088438c  04 00 a0 e1                                      mov r0, r4
00884390  0f e0 a0 e1                                      mov lr, pc
00884394  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00884398  07 20 a0 e1                                      mov r2, r7
0088439c  00 30 a0 e1                                      mov r3, r0
008843a0  00 10 a0 e1                                      mov r1, r0
008843a4  04 00 a0 e1                                      mov r0, r4
008843a8  03 00 56 e1                                      cmp r6, r3
008843ac  03 60 a0 b1                                      movlt r6, r3
008843b0  91 ff ff eb                                      bl #0x8841fc
008843b4  d5 ff ff ea                                      b #0x884310

; FUNCTION 0x008843b8, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder28GetNextDyingSegmentLifeStateEv
; demangled: vox::VoxNativeSubDecoder::GetNextDyingSegmentLifeState()
; decoder-mode: arm
008843b8  94 30 90 e5                                      ldr r3, [r0, #0x94]
008843bc  01 00 53 e3                                      cmp r3, #1
008843c0  05 00 00 da                                      ble #0x8843dc
008843c4  68 30 90 e5                                      ldr r3, [r0, #0x68]
008843c8  01 00 53 e3                                      cmp r3, #1
008843cc  10 00 00 0a                                      beq #0x884414
008843d0  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
008843d4  01 00 53 e3                                      cmp r3, #1
008843d8  01 00 00 0a                                      beq #0x8843e4
008843dc  02 00 a0 e3                                      mov r0, #2
008843e0  1e ff 2f e1                                      bx lr
008843e4  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
008843e8  20 31 90 e5                                      ldr r3, [r0, #0x120]
008843ec  00 10 92 e5                                      ldr r1, [r2]
008843f0  0c 20 a0 e3                                      mov r2, #0xc
008843f4  92 03 03 e0                                      mul r3, r2, r3
008843f8  2c 21 90 e5                                      ldr r2, [r0, #0x12c]
008843fc  03 30 91 e7                                      ldr r3, [r1, r3]
00884400  04 30 93 e5                                      ldr r3, [r3, #4]
00884404  03 00 52 e1                                      cmp r2, r3
00884408  f3 ff ff aa                                      bge #0x8843dc
0088440c  01 00 a0 e3                                      mov r0, #1
00884410  1e ff 2f e1                                      bx lr
00884414  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00884418  38 30 90 e5                                      ldr r3, [r0, #0x38]
0088441c  03 00 52 e1                                      cmp r2, r3
00884420  ed ff ff 0a                                      beq #0x8843dc
00884424  14 31 90 e5                                      ldr r3, [r0, #0x114]
00884428  58 21 90 e5                                      ldr r2, [r0, #0x158]
0088442c  03 00 52 e1                                      cmp r2, r3
00884430  f5 ff ff ba                                      blt #0x88440c
00884434  e8 ff ff ea                                      b #0x8843dc

; FUNCTION 0x00884438, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder14GetTrackParamsEv
; demangled: vox::VoxNativeSubDecoder::GetTrackParams()
; decoder-mode: arm
00884438  00 20 a0 e3                                      mov r2, #0
0088443c  00 20 80 e5                                      str r2, [r0]
00884440  04 20 80 e5                                      str r2, [r0, #4]
00884444  08 20 80 e5                                      str r2, [r0, #8]
00884448  0c 20 80 e5                                      str r2, [r0, #0xc]
0088444c  fa 20 d1 e1                                      ldrsh r2, [r1, #0xa]
00884450  00 20 80 e5                                      str r2, [r0]
00884454  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00884458  04 20 80 e5                                      str r2, [r0, #4]
0088445c  f2 21 d1 e1                                      ldrsh r2, [r1, #0x12]
00884460  08 20 80 e5                                      str r2, [r0, #8]
00884464  1e ff 2f e1                                      bx lr

; FUNCTION 0x00884468, declared_size=8, range_size=8, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder7HasDataEv
; demangled: vox::VoxNativeSubDecoder::HasData()
; decoder-mode: arm
00884468  6c 01 d0 e5                                      ldrb r0, [r0, #0x16c]
0088446c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00884470, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder20IsExtraSegmentNeededEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::IsExtraSegmentNeeded(vox::TransitionRule*)
; decoder-mode: arm
00884470  10 40 2d e9                                      push {r4, lr}
00884474  94 30 90 e5                                      ldr r3, [r0, #0x94]
00884478  00 00 53 e3                                      cmp r3, #0
0088447c  0e 00 00 da                                      ble #0x8844bc
00884480  00 00 51 e3                                      cmp r1, #0
00884484  0f 00 00 0a                                      beq #0x8844c8
00884488  04 30 91 e5                                      ldr r3, [r1, #4]
0088448c  00 00 53 e3                                      cmp r3, #0
00884490  07 00 00 1a                                      bne #0x8844b4
00884494  18 00 91 e5                                      ldr r0, [r1, #0x18]
00884498  00 10 a0 e3                                      mov r1, #0
0088449c  03 40 a0 e1                                      mov r4, r3
008844a0  94 27 ea eb                                      bl #0x30e2f8
008844a4  00 00 50 e3                                      cmp r0, #0
008844a8  01 40 a0 13                                      movne r4, #1
008844ac  74 00 ef e6                                      uxtb r0, r4
008844b0  10 80 bd e8                                      pop {r4, pc}
008844b4  01 00 a0 e3                                      mov r0, #1
008844b8  10 80 bd e8                                      pop {r4, pc}
008844bc  00 00 a0 13                                      movne r0, #0
008844c0  01 00 a0 03                                      moveq r0, #1
008844c4  10 80 bd e8                                      pop {r4, pc}
008844c8  70 30 90 e5                                      ldr r3, [r0, #0x70]
008844cc  01 00 53 e3                                      cmp r3, #1
008844d0  f7 ff ff 0a                                      beq #0x8844b4
008844d4  80 00 90 e5                                      ldr r0, [r0, #0x80]
008844d8  01 00 50 e3                                      cmp r0, #1
008844dc  00 00 a0 13                                      movne r0, #0
008844e0  01 00 a0 03                                      moveq r0, #1
008844e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008844e8, declared_size=588, range_size=588, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoder::MixSegmentInBuffer(short*, int, vox::SegmentState*)
; decoder-mode: arm
008844e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008844ec  38 62 9f e5                                      ldr r6, [pc, #0x238]
008844f0  38 b2 9f e5                                      ldr fp, [pc, #0x238]
008844f4  f2 c1 d0 e1                                      ldrsh ip, [r0, #0x12]
008844f8  fa 40 d0 e1                                      ldrsh r4, [r0, #0xa]
008844fc  06 60 8f e0                                      add r6, pc, r6
00884500  03 50 a0 e1                                      mov r5, r3
00884504  0b 30 96 e7                                      ldr r3, [r6, fp]
00884508  cc c1 a0 e1                                      asr ip, ip, #3
0088450c  14 d0 4d e2                                      sub sp, sp, #0x14
00884510  02 00 a0 e1                                      mov r0, r2
00884514  01 90 a0 e1                                      mov sb, r1
00884518  94 0c 01 e0                                      mul r1, r4, ip
0088451c  00 70 93 e5                                      ldr r7, [r3]
00884520  5f 27 ea eb                                      bl #0x30e2a4
00884524  28 80 95 e5                                      ldr r8, [r5, #0x28]
00884528  00 30 a0 e1                                      mov r3, r0
0088452c  38 a0 95 e5                                      ldr sl, [r5, #0x38]
00884530  08 20 60 e0                                      rsb r2, r0, r8
00884534  34 00 95 e5                                      ldr r0, [r5, #0x34]
00884538  00 00 52 e3                                      cmp r2, #0
0088453c  00 10 a0 b3                                      movlt r1, #0
00884540  28 20 85 e5                                      str r2, [r5, #0x28]
00884544  30 20 95 e5                                      ldr r2, [r5, #0x30]
00884548  04 00 8d e5                                      str r0, [sp, #4]
0088454c  28 10 85 b5                                      strlt r1, [r5, #0x28]
00884550  00 00 58 e3                                      cmp r8, #0
00884554  0e 00 00 da                                      ble #0x884594
00884558  03 00 58 e1                                      cmp r8, r3
0088455c  03 80 a0 a1                                      movge r8, r3
00884560  04 10 9d e5                                      ldr r1, [sp, #4]
00884564  94 08 00 e0                                      mul r0, r4, r8
00884568  00 00 51 e3                                      cmp r1, #0
0088456c  0c 80 8d e5                                      str r8, [sp, #0xc]
00884570  08 00 8d e5                                      str r0, [sp, #8]
00884574  54 00 00 ba                                      blt #0x8846cc
00884578  0b 10 96 e7                                      ldr r1, [r6, fp]
0088457c  08 00 9d e5                                      ldr r0, [sp, #8]
00884580  00 70 91 e5                                      ldr r7, [r1]
00884584  80 90 89 e0                                      add sb, sb, r0, lsl #1
00884588  00 71 87 e0                                      add r7, r7, r0, lsl #2
0088458c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00884590  03 30 61 e0                                      rsb r3, r1, r3
00884594  94 03 00 e0                                      mul r0, r4, r3
00884598  00 00 52 e3                                      cmp r2, #0
0088459c  08 00 8d e5                                      str r0, [sp, #8]
008845a0  92 04 0b e0                                      mul fp, r2, r4
008845a4  30 20 95 d5                                      ldrle r2, [r5, #0x30]
008845a8  21 00 00 da                                      ble #0x884634
008845ac  02 00 53 e1                                      cmp r3, r2
008845b0  0c 20 8d a5                                      strge r2, [sp, #0xc]
008845b4  3e 00 00 ba                                      blt #0x8846b4
008845b8  00 00 5b e3                                      cmp fp, #0
008845bc  14 00 00 da                                      ble #0x884614
008845c0  00 60 a0 e3                                      mov r6, #0
008845c4  06 80 a0 e1                                      mov r8, r6
008845c8  88 30 a0 e1                                      lsl r3, r8, #1
008845cc  f3 10 99 e1                                      ldrsh r1, [sb, r3]
008845d0  ca 37 a0 e1                                      asr r3, sl, #0xf
008845d4  06 20 97 e7                                      ldr r2, [r7, r6]
008845d8  91 03 03 e0                                      mul r3, r1, r3
008845dc  01 80 88 e2                                      add r8, r8, #1
008845e0  c3 37 82 e0                                      add r3, r2, r3, asr #15
008845e4  06 30 87 e7                                      str r3, [r7, r6]
008845e8  08 00 a0 e1                                      mov r0, r8
008845ec  04 10 a0 e1                                      mov r1, r4
008845f0  c3 28 ea eb                                      bl #0x30e904
008845f4  00 00 51 e3                                      cmp r1, #0
008845f8  04 10 9d 05                                      ldreq r1, [sp, #4]
008845fc  04 60 86 e2                                      add r6, r6, #4
00884600  01 a0 8a 00                                      addeq sl, sl, r1
00884604  0b 00 58 e1                                      cmp r8, fp
00884608  ee ff ff 1a                                      bne #0x8845c8
0088460c  0b 71 87 e0                                      add r7, r7, fp, lsl #2
00884610  8b 90 89 e0                                      add sb, sb, fp, lsl #1
00884614  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00884618  30 20 95 e5                                      ldr r2, [r5, #0x30]
0088461c  38 a0 85 e5                                      str sl, [r5, #0x38]
00884620  02 20 63 e0                                      rsb r2, r3, r2
00884624  00 00 52 e3                                      cmp r2, #0
00884628  30 20 85 e5                                      str r2, [r5, #0x30]
0088462c  00 20 a0 b3                                      movlt r2, #0
00884630  30 20 85 b5                                      strlt r2, [r5, #0x30]
00884634  00 00 52 e3                                      cmp r2, #0
00884638  17 00 00 1a                                      bne #0x88469c
0088463c  04 00 9d e5                                      ldr r0, [sp, #4]
00884640  28 20 85 e5                                      str r2, [r5, #0x28]
00884644  2c 20 85 e5                                      str r2, [r5, #0x2c]
00884648  00 00 50 e3                                      cmp r0, #0
0088464c  01 30 a0 b3                                      movlt r3, #1
00884650  30 20 85 e5                                      str r2, [r5, #0x30]
00884654  34 20 85 e5                                      str r2, [r5, #0x34]
00884658  38 20 85 e5                                      str r2, [r5, #0x38]
0088465c  24 30 85 b5                                      strlt r3, [r5, #0x24]
00884660  0d 00 00 ba                                      blt #0x88469c
00884664  08 10 9d e5                                      ldr r1, [sp, #8]
00884668  01 00 5b e1                                      cmp fp, r1
0088466c  0a 00 00 aa                                      bge #0x88469c
00884670  02 30 a0 e1                                      mov r3, r2
00884674  01 c0 a0 e1                                      mov ip, r1
00884678  f2 10 99 e1                                      ldrsh r1, [sb, r2]
0088467c  03 00 97 e7                                      ldr r0, [r7, r3]
00884680  01 b0 8b e2                                      add fp, fp, #1
00884684  0c 00 5b e1                                      cmp fp, ip
00884688  01 10 80 e0                                      add r1, r0, r1
0088468c  03 10 87 e7                                      str r1, [r7, r3]
00884690  02 20 82 e2                                      add r2, r2, #2
00884694  04 30 83 e2                                      add r3, r3, #4
00884698  f6 ff ff 1a                                      bne #0x884678
0088469c  04 30 95 e5                                      ldr r3, [r5, #4]
008846a0  03 00 53 e3                                      cmp r3, #3
008846a4  01 30 a0 03                                      moveq r3, #1
008846a8  24 30 85 05                                      streq r3, [r5, #0x24]
008846ac  14 d0 8d e2                                      add sp, sp, #0x14
008846b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008846b4  04 20 95 e5                                      ldr r2, [r5, #4]
008846b8  03 00 52 e3                                      cmp r2, #3
008846bc  13 00 00 0a                                      beq #0x884710
008846c0  0c 30 8d e5                                      str r3, [sp, #0xc]
008846c4  08 b0 9d e5                                      ldr fp, [sp, #8]
008846c8  ba ff ff ea                                      b #0x8845b8
008846cc  00 00 50 e3                                      cmp r0, #0
008846d0  ad ff ff da                                      ble #0x88458c
008846d4  00 10 a0 e3                                      mov r1, #0
008846d8  80 80 a0 e1                                      lsl r8, r0, #1
008846dc  01 00 a0 e1                                      mov r0, r1
008846e0  f1 c0 99 e1                                      ldrsh ip, [sb, r1]
008846e4  00 60 97 e7                                      ldr r6, [r7, r0]
008846e8  02 10 81 e2                                      add r1, r1, #2
008846ec  08 00 51 e1                                      cmp r1, r8
008846f0  0c c0 86 e0                                      add ip, r6, ip
008846f4  00 c0 87 e7                                      str ip, [r7, r0]
008846f8  04 00 80 e2                                      add r0, r0, #4
008846fc  f7 ff ff 1a                                      bne #0x8846e0
00884700  08 00 9d e5                                      ldr r0, [sp, #8]
00884704  01 90 89 e0                                      add sb, sb, r1
00884708  00 71 87 e0                                      add r7, r7, r0, lsl #2
0088470c  9e ff ff ea                                      b #0x88458c
00884710  00 00 6a e2                                      rsb r0, sl, #0
00884714  03 10 a0 e1                                      mov r1, r3
00884718  0c 30 8d e5                                      str r3, [sp, #0xc]
0088471c  e0 26 ea eb                                      bl #0x30e2a4
00884720  08 b0 9d e5                                      ldr fp, [sp, #8]
00884724  04 00 8d e5                                      str r0, [sp, #4]
00884728  a2 ff ff ea                                      b #0x8845b8
; mapping-symbol data/literal pool
0088472c  94 05 11 00 a4 06 00 00                          .byte 0x94, 0x05, 0x11, 0x00, 0xa4, 0x06, 0x00, 0x00

; FUNCTION 0x00884734, declared_size=160, range_size=160, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder11StopSegmentEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoder::StopSegment(vox::SegmentState*)
; decoder-mode: arm
00884734  f8 30 d0 e1                                      ldrsh r3, [r0, #8]
00884738  70 40 2d e9                                      push {r4, r5, r6, lr}
0088473c  11 00 53 e3                                      cmp r3, #0x11
00884740  00 50 a0 e1                                      mov r5, r0
00884744  01 40 a0 e1                                      mov r4, r1
00884748  1c 00 00 0a                                      beq #0x8847c0
0088474c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00884750  00 10 e0 e3                                      mvn r1, #0
00884754  01 20 a0 e3                                      mov r2, #1
00884758  01 00 53 e3                                      cmp r3, #1
0088475c  94 30 95 05                                      ldreq r3, [r5, #0x94]
00884760  01 30 43 02                                      subeq r3, r3, #1
00884764  94 30 85 05                                      streq r3, [r5, #0x94]
00884768  04 30 94 e5                                      ldr r3, [r4, #4]
0088476c  01 00 53 e3                                      cmp r3, #1
00884770  00 30 a0 03                                      moveq r3, #0
00884774  6c 31 c5 05                                      strbeq r3, [r5, #0x16c]
00884778  00 30 a0 e3                                      mov r3, #0
0088477c  00 10 84 e5                                      str r1, [r4]
00884780  02 10 a0 e3                                      mov r1, #2
00884784  38 30 84 e5                                      str r3, [r4, #0x38]
00884788  1c 20 84 e5                                      str r2, [r4, #0x1c]
0088478c  24 10 84 e5                                      str r1, [r4, #0x24]
00884790  04 30 84 e5                                      str r3, [r4, #4]
00884794  08 30 84 e5                                      str r3, [r4, #8]
00884798  0c 30 84 e5                                      str r3, [r4, #0xc]
0088479c  10 30 84 e5                                      str r3, [r4, #0x10]
008847a0  14 30 84 e5                                      str r3, [r4, #0x14]
008847a4  18 20 84 e5                                      str r2, [r4, #0x18]
008847a8  20 30 84 e5                                      str r3, [r4, #0x20]
008847ac  28 30 84 e5                                      str r3, [r4, #0x28]
008847b0  2c 30 84 e5                                      str r3, [r4, #0x2c]
008847b4  30 30 84 e5                                      str r3, [r4, #0x30]
008847b8  34 30 84 e5                                      str r3, [r4, #0x34]
008847bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008847c0  00 30 90 e5                                      ldr r3, [r0]
008847c4  3c 10 91 e5                                      ldr r1, [r1, #0x3c]
008847c8  0f e0 a0 e1                                      mov lr, pc
008847cc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
008847d0  dd ff ff ea                                      b #0x88474c

; FUNCTION 0x008847d4, declared_size=20, range_size=20, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoderD0Ev
; demangled: vox::VoxNativeSubDecoder::~VoxNativeSubDecoder()
; decoder-mode: arm
008847d4  10 40 2d e9                                      push {r4, lr}
008847d8  00 40 a0 e1                                      mov r4, r0
008847dc  b3 26 ea eb                                      bl #0x30e2b0
008847e0  04 00 a0 e1                                      mov r0, r4
008847e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008847e8, declared_size=716, range_size=716, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder21UpdateOldSegmentStateEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::UpdateOldSegmentState(vox::TransitionRule*)
; decoder-mode: arm
008847e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008847ec  00 40 a0 e1                                      mov r4, r0
008847f0  01 50 a0 e1                                      mov r5, r1
008847f4  14 d0 4d e2                                      sub sp, sp, #0x14
008847f8  dc 00 80 e2                                      add r0, r0, #0xdc
008847fc  12 1e 84 e2                                      add r1, r4, #0x120
00884800  41 20 a0 e3                                      mov r2, #0x41
00884804  17 28 ea eb                                      bl #0x30e868
00884808  02 30 a0 e3                                      mov r3, #2
0088480c  00 00 55 e3                                      cmp r5, #0
00884810  e0 30 84 e5                                      str r3, [r4, #0xe0]
00884814  88 00 00 0a                                      beq #0x884a3c
00884818  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0088481c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884820  08 a1 94 e5                                      ldr sl, [r4, #0x108]
00884824  fc 30 84 e5                                      str r3, [r4, #0xfc]
00884828  4d 28 ea eb                                      bl #0x30e964
0088482c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00884830  00 60 a0 e1                                      mov r6, r0
00884834  4c 29 ea eb                                      bl #0x30ed6c
00884838  23 27 ea eb                                      bl #0x30e4cc
0088483c  00 00 50 e3                                      cmp r0, #0
00884840  08 01 84 e5                                      str r0, [r4, #0x108]
00884844  3e 00 00 da                                      ble #0x884944
00884848  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0088484c  06 00 a0 e1                                      mov r0, r6
00884850  45 29 ea eb                                      bl #0x30ed6c
00884854  1c 27 ea eb                                      bl #0x30e4cc
00884858  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0088485c  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
00884860  0c 80 a0 e3                                      mov r8, #0xc
00884864  00 30 93 e5                                      ldr r3, [r3]
00884868  00 70 a0 e1                                      mov r7, r0
0088486c  04 00 8d e2                                      add r0, sp, #4
00884870  98 31 21 e0                                      mla r1, r8, r1, r3
00884874  e0 b2 ff eb                                      bl #0x8713fc
00884878  04 60 9d e5                                      ldr r6, [sp, #4]
0088487c  04 30 95 e5                                      ldr r3, [r5, #4]
00884880  08 10 9d e5                                      ldr r1, [sp, #8]
00884884  00 00 53 e3                                      cmp r3, #0
00884888  01 10 66 e0                                      rsb r1, r6, r1
0088488c  41 11 a0 e1                                      asr r1, r1, #2
00884890  38 00 00 1a                                      bne #0x884978
00884894  f8 80 94 e5                                      ldr r8, [r4, #0xf8]
00884898  04 71 84 e5                                      str r7, [r4, #0x104]
0088489c  e8 30 94 e5                                      ldr r3, [r4, #0xe8]
008848a0  01 00 58 e3                                      cmp r8, #1
008848a4  00 80 a0 13                                      movne r8, #0
008848a8  00 00 57 e3                                      cmp r7, #0
008848ac  08 71 94 a5                                      ldrge r7, [r4, #0x108]
008848b0  3f 00 00 ba                                      blt #0x8849b4
008848b4  00 00 58 e3                                      cmp r8, #0
008848b8  0e 00 00 0a                                      beq #0x8848f8
008848bc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
008848c0  01 00 52 e3                                      cmp r2, #1
008848c4  53 00 00 0a                                      beq #0x884a18
008848c8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
008848cc  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
008848d0  0c 00 a0 e3                                      mov r0, #0xc
008848d4  00 10 91 e5                                      ldr r1, [r1]
008848d8  90 02 02 e0                                      mul r2, r0, r2
008848dc  02 20 91 e7                                      ldr r2, [r1, r2]
008848e0  08 20 92 e5                                      ldr r2, [r2, #8]
008848e4  01 30 63 e2                                      rsb r3, r3, #1
008848e8  02 30 83 e0                                      add r3, r3, r2
008848ec  07 00 53 e1                                      cmp r3, r7
008848f0  08 31 84 b5                                      strlt r3, [r4, #0x108]
008848f4  00 00 00 ba                                      blt #0x8848fc
008848f8  07 30 a0 e1                                      mov r3, r7
008848fc  00 00 5a e3                                      cmp sl, #0
00884900  58 01 94 c5                                      ldrgt r0, [r4, #0x158]
00884904  0c 31 84 e5                                      str r3, [r4, #0x10c]
00884908  01 31 a0 d3                                      movle r3, #0x40000000
0088490c  14 01 84 c5                                      strgt r0, [r4, #0x114]
00884910  14 31 84 d5                                      strle r3, [r4, #0x114]
00884914  00 00 60 c2                                      rsbgt r0, r0, #0
00884918  03 01 a0 d3                                      movle r0, #0xc0000000
0088491c  08 11 94 e5                                      ldr r1, [r4, #0x108]
00884920  5f 26 ea eb                                      bl #0x30e2a4
00884924  00 00 56 e3                                      cmp r6, #0
00884928  10 01 84 e5                                      str r0, [r4, #0x110]
0088492c  01 00 00 0a                                      beq #0x884938
00884930  06 00 a0 e1                                      mov r0, r6
00884934  c2 2e ea eb                                      bl #0x310444
00884938  00 00 58 e3                                      cmp r8, #0
0088493c  0b 00 00 0a                                      beq #0x884970
00884940  05 00 00 ea                                      b #0x88495c
00884944  00 30 a0 e3                                      mov r3, #0
00884948  14 31 84 e5                                      str r3, [r4, #0x114]
0088494c  04 31 84 e5                                      str r3, [r4, #0x104]
00884950  08 31 84 e5                                      str r3, [r4, #0x108]
00884954  0c 31 84 e5                                      str r3, [r4, #0x10c]
00884958  10 31 84 e5                                      str r3, [r4, #0x110]
0088495c  01 30 a0 e3                                      mov r3, #1
00884960  04 20 a0 e3                                      mov r2, #4
00884964  f8 30 84 e5                                      str r3, [r4, #0xf8]
00884968  00 21 84 e5                                      str r2, [r4, #0x100]
0088496c  f4 30 84 e5                                      str r3, [r4, #0xf4]
00884970  14 d0 8d e2                                      add sp, sp, #0x14
00884974  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00884978  05 00 53 e3                                      cmp r3, #5
0088497c  15 00 00 0a                                      beq #0x8849d8
00884980  06 00 53 e3                                      cmp r3, #6
00884984  42 00 00 0a                                      beq #0x884a94
00884988  04 00 53 e3                                      cmp r3, #4
0088498c  30 00 00 0a                                      beq #0x884a54
00884990  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884994  00 30 a0 e3                                      mov r3, #0
00884998  03 00 60 e0                                      rsb r0, r0, r3
0088499c  07 70 80 e0                                      add r7, r0, r7
008849a0  00 00 57 e3                                      cmp r7, #0
008849a4  04 71 84 e5                                      str r7, [r4, #0x104]
008849a8  01 80 a0 e3                                      mov r8, #1
008849ac  08 71 94 a5                                      ldrge r7, [r4, #0x108]
008849b0  bf ff ff aa                                      bge #0x8848b4
008849b4  08 01 94 e5                                      ldr r0, [r4, #0x108]
008849b8  00 20 a0 e3                                      mov r2, #0
008849bc  04 21 84 e5                                      str r2, [r4, #0x104]
008849c0  00 70 87 e0                                      add r7, r7, r0
008849c4  02 00 57 e1                                      cmp r7, r2
008849c8  08 71 84 e5                                      str r7, [r4, #0x108]
008849cc  08 21 84 b5                                      strlt r2, [r4, #0x108]
008849d0  02 70 a0 b1                                      movlt r7, r2
008849d4  b6 ff ff ea                                      b #0x8848b4
008849d8  03 00 51 e3                                      cmp r1, #3
008849dc  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
008849e0  0a 00 00 da                                      ble #0x884a10
008849e4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
008849e8  03 00 50 e1                                      cmp r0, r3
008849ec  03 20 a0 a3                                      movge r2, #3
008849f0  03 00 00 aa                                      bge #0x884a04
008849f4  e7 ff ff ea                                      b #0x884998
008849f8  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
008849fc  00 00 53 e1                                      cmp r3, r0
00884a00  e4 ff ff ca                                      bgt #0x884998
00884a04  01 20 82 e2                                      add r2, r2, #1
00884a08  01 00 52 e1                                      cmp r2, r1
00884a0c  f9 ff ff 1a                                      bne #0x8849f8
00884a10  00 30 a0 e3                                      mov r3, #0
00884a14  df ff ff ea                                      b #0x884998
00884a18  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00884a1c  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00884a20  0c c0 a0 e3                                      mov ip, #0xc
00884a24  00 00 90 e5                                      ldr r0, [r0]
00884a28  9c 02 02 e0                                      mul r2, ip, r2
00884a2c  01 10 41 e2                                      sub r1, r1, #1
00884a30  02 20 90 e7                                      ldr r2, [r0, r2]
00884a34  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00884a38  a9 ff ff ea                                      b #0x8848e4
00884a3c  14 51 84 e5                                      str r5, [r4, #0x114]
00884a40  04 51 84 e5                                      str r5, [r4, #0x104]
00884a44  08 51 84 e5                                      str r5, [r4, #0x108]
00884a48  0c 51 84 e5                                      str r5, [r4, #0x10c]
00884a4c  10 51 84 e5                                      str r5, [r4, #0x110]
00884a50  c1 ff ff ea                                      b #0x88495c
00884a54  00 00 51 e3                                      cmp r1, #0
00884a58  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884a5c  eb ff ff da                                      ble #0x884a10
00884a60  00 30 96 e5                                      ldr r3, [r6]
00884a64  00 00 53 e1                                      cmp r3, r0
00884a68  00 20 a0 d3                                      movle r2, #0
00884a6c  03 00 00 da                                      ble #0x884a80
00884a70  c8 ff ff ea                                      b #0x884998
00884a74  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
00884a78  00 00 53 e1                                      cmp r3, r0
00884a7c  c5 ff ff ca                                      bgt #0x884998
00884a80  01 20 82 e2                                      add r2, r2, #1
00884a84  01 00 52 e1                                      cmp r2, r1
00884a88  f9 ff ff 1a                                      bne #0x884a74
00884a8c  00 30 a0 e3                                      mov r3, #0
00884a90  c0 ff ff ea                                      b #0x884998
00884a94  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884a98  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00884a9c  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
00884aa0  00 30 93 e5                                      ldr r3, [r3]
00884aa4  98 02 08 e0                                      mul r8, r8, r2
00884aa8  08 30 93 e7                                      ldr r3, [r3, r8]
00884aac  08 30 93 e5                                      ldr r3, [r3, #8]
00884ab0  b8 ff ff ea                                      b #0x884998

; FUNCTION 0x00884ab4, declared_size=272, range_size=272, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder23UpdateDyingSegmentStateEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::UpdateDyingSegmentState(vox::TransitionRule*)
; decoder-mode: arm
00884ab4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00884ab8  41 20 a0 e3                                      mov r2, #0x41
00884abc  00 40 a0 e1                                      mov r4, r0
00884ac0  14 d0 4d e2                                      sub sp, sp, #0x14
00884ac4  01 50 a0 e1                                      mov r5, r1
00884ac8  dc 10 80 e2                                      add r1, r0, #0xdc
00884acc  98 00 80 e2                                      add r0, r0, #0x98
00884ad0  64 27 ea eb                                      bl #0x30e868
00884ad4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884ad8  03 20 a0 e3                                      mov r2, #3
00884adc  9c 20 84 e5                                      str r2, [r4, #0x9c]
00884ae0  04 20 a0 e3                                      mov r2, #4
00884ae4  bc 20 84 e5                                      str r2, [r4, #0xbc]
00884ae8  00 30 93 e5                                      ldr r3, [r3]
00884aec  98 20 94 e5                                      ldr r2, [r4, #0x98]
00884af0  0c 10 a0 e3                                      mov r1, #0xc
00884af4  04 00 8d e2                                      add r0, sp, #4
00884af8  91 32 21 e0                                      mla r1, r1, r2, r3
00884afc  3e b2 ff eb                                      bl #0x8713fc
00884b00  08 31 94 e5                                      ldr r3, [r4, #0x108]
00884b04  c0 00 9d e9                                      ldmib sp, {r6, r7}
00884b08  00 00 53 e3                                      cmp r3, #0
00884b0c  01 31 a0 03                                      moveq r3, #0x40000000
00884b10  d0 30 84 05                                      streq r3, [r4, #0xd0]
00884b14  01 0c a0 03                                      moveq r0, #0x100
00884b18  c8 00 94 15                                      ldrne r0, [r4, #0xc8]
00884b1c  00 00 55 e3                                      cmp r5, #0
00884b20  04 00 00 0a                                      beq #0x884b38
00884b24  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884b28  8d 27 ea eb                                      bl #0x30e964
00884b2c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00884b30  8d 28 ea eb                                      bl #0x30ed6c
00884b34  64 26 ea eb                                      bl #0x30e4cc
00884b38  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
00884b3c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00884b40  0c 10 a0 e3                                      mov r1, #0xc
00884b44  01 00 53 e3                                      cmp r3, #1
00884b48  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00884b4c  00 20 92 e5                                      ldr r2, [r2]
00884b50  07 70 66 00                                      rsbeq r7, r6, r7
00884b54  91 03 03 e0                                      mul r3, r1, r3
00884b58  47 71 a0 01                                      asreq r7, r7, #2
00884b5c  03 30 92 07                                      ldreq r3, [r2, r3]
00884b60  03 30 92 17                                      ldrne r3, [r2, r3]
00884b64  01 70 47 02                                      subeq r7, r7, #1
00884b68  07 21 93 07                                      ldreq r2, [r3, r7, lsl #2]
00884b6c  08 20 93 15                                      ldrne r2, [r3, #8]
00884b70  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00884b74  01 30 63 e2                                      rsb r3, r3, #1
00884b78  02 30 83 e0                                      add r3, r3, r2
00884b7c  03 00 50 e1                                      cmp r0, r3
00884b80  c4 30 84 c5                                      strgt r3, [r4, #0xc4]
00884b84  c4 00 84 d5                                      strle r0, [r4, #0xc4]
00884b88  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00884b8c  00 30 a0 d1                                      movle r3, r0
00884b90  c8 30 84 e5                                      str r3, [r4, #0xc8]
00884b94  00 00 51 e3                                      cmp r1, #0
00884b98  03 00 00 da                                      ble #0x884bac
00884b9c  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
00884ba0  00 00 60 e2                                      rsb r0, r0, #0
00884ba4  be 25 ea eb                                      bl #0x30e2a4
00884ba8  cc 00 84 e5                                      str r0, [r4, #0xcc]
00884bac  00 00 56 e3                                      cmp r6, #0
00884bb0  01 00 00 0a                                      beq #0x884bbc
00884bb4  06 00 a0 e1                                      mov r0, r6
00884bb8  21 2e ea eb                                      bl #0x310444
00884bbc  14 d0 8d e2                                      add sp, sp, #0x14
00884bc0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00884bc4, declared_size=832, range_size=832, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder25UpdateCurrentSegmentStateEPNS_14TransitionRuleEb
; demangled: vox::VoxNativeSubDecoder::UpdateCurrentSegmentState(vox::TransitionRule*, bool)
; decoder-mode: arm
00884bc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00884bc8  78 60 90 e5                                      ldr r6, [r0, #0x78]
00884bcc  14 d0 4d e2                                      sub sp, sp, #0x14
00884bd0  00 40 a0 e1                                      mov r4, r0
00884bd4  01 00 76 e3                                      cmn r6, #1
00884bd8  01 50 a0 e1                                      mov r5, r1
00884bdc  02 70 a0 e1                                      mov r7, r2
00884be0  80 00 00 0a                                      beq #0x884de8
00884be4  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
00884be8  01 00 53 e3                                      cmp r3, #1
00884bec  b3 00 00 0a                                      beq #0x884ec0
00884bf0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00884bf4  0c 20 a0 e3                                      mov r2, #0xc
00884bf8  20 61 84 e5                                      str r6, [r4, #0x120]
00884bfc  00 30 90 e5                                      ldr r3, [r0]
00884c00  92 06 02 e0                                      mul r2, r2, r6
00884c04  80 e0 94 e5                                      ldr lr, [r4, #0x80]
00884c08  02 10 93 e7                                      ldr r1, [r3, r2]
00884c0c  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00884c10  01 e0 5e e2                                      subs lr, lr, #1
00884c14  01 e0 a0 13                                      movne lr, #1
00884c18  0e 11 91 e7                                      ldr r1, [r1, lr, lsl #2]
00884c1c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00884c20  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00884c24  30 11 84 e5                                      str r1, [r4, #0x130]
00884c28  00 00 90 e5                                      ldr r0, [r0]
00884c2c  00 00 5c e3                                      cmp ip, #0
00884c30  00 10 6c b2                                      rsblt r1, ip, #0
00884c34  02 20 90 e7                                      ldr r2, [r0, r2]
00884c38  04 00 a0 e1                                      mov r0, r4
00884c3c  08 20 92 e5                                      ldr r2, [r2, #8]
00884c40  3c 31 84 e5                                      str r3, [r4, #0x13c]
00884c44  38 31 84 e5                                      str r3, [r4, #0x138]
00884c48  40 e1 84 e5                                      str lr, [r4, #0x140]
00884c4c  00 30 94 e5                                      ldr r3, [r4]
00884c50  34 21 84 e5                                      str r2, [r4, #0x134]
00884c54  2c 11 84 e5                                      str r1, [r4, #0x12c]
00884c58  0f e0 a0 e1                                      mov lr, pc
00884c5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00884c60  03 30 a0 e3                                      mov r3, #3
00884c64  28 01 84 e5                                      str r0, [r4, #0x128]
00884c68  44 31 84 e5                                      str r3, [r4, #0x144]
00884c6c  f8 30 d4 e1                                      ldrsh r3, [r4, #8]
00884c70  11 00 53 e3                                      cmp r3, #0x11
00884c74  87 00 00 0a                                      beq #0x884e98
00884c78  00 00 55 e3                                      cmp r5, #0
00884c7c  61 00 00 0a                                      beq #0x884e08
00884c80  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00884c84  36 27 ea eb                                      bl #0x30e964
00884c88  10 10 95 e5                                      ldr r1, [r5, #0x10]
00884c8c  00 80 a0 e1                                      mov r8, r0
00884c90  35 28 ea eb                                      bl #0x30ed6c
00884c94  0c 26 ea eb                                      bl #0x30e4cc
00884c98  00 00 50 e3                                      cmp r0, #0
00884c9c  00 70 a0 e1                                      mov r7, r0
00884ca0  4c 01 84 e5                                      str r0, [r4, #0x14c]
00884ca4  5d 00 00 da                                      ble #0x884e20
00884ca8  04 30 95 e5                                      ldr r3, [r5, #4]
00884cac  00 00 53 e3                                      cmp r3, #0
00884cb0  11 00 00 0a                                      beq #0x884cfc
00884cb4  06 00 53 e3                                      cmp r3, #6
00884cb8  5f 00 00 0a                                      beq #0x884e3c
00884cbc  48 01 94 e5                                      ldr r0, [r4, #0x148]
00884cc0  00 60 a0 e3                                      mov r6, #0
00884cc4  00 00 50 e3                                      cmp r0, #0
00884cc8  22 00 00 ba                                      blt #0x884d58
00884ccc  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00884cd0  01 00 53 e3                                      cmp r3, #1
00884cd4  29 00 00 0a                                      beq #0x884d80
00884cd8  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
00884cdc  01 01 a0 e3                                      mov r0, #0x40000000
00884ce0  50 11 84 e5                                      str r1, [r4, #0x150]
00884ce4  6e 25 ea eb                                      bl #0x30e2a4
00884ce8  00 30 a0 e3                                      mov r3, #0
00884cec  58 31 84 e5                                      str r3, [r4, #0x158]
00884cf0  54 01 84 e5                                      str r0, [r4, #0x154]
00884cf4  14 d0 8d e2                                      add sp, sp, #0x14
00884cf8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00884cfc  10 10 95 e5                                      ldr r1, [r5, #0x10]
00884d00  14 00 95 e5                                      ldr r0, [r5, #0x14]
00884d04  a8 25 ea eb                                      bl #0x30e3ac
00884d08  00 10 a0 e1                                      mov r1, r0
00884d0c  08 00 a0 e1                                      mov r0, r8
00884d10  15 28 ea eb                                      bl #0x30ed6c
00884d14  ec 25 ea eb                                      bl #0x30e4cc
00884d18  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00884d1c  48 01 84 e5                                      str r0, [r4, #0x148]
00884d20  00 00 53 e3                                      cmp r3, #0
00884d24  2c 61 94 15                                      ldrne r6, [r4, #0x12c]
00884d28  e5 ff ff 1a                                      bne #0x884cc4
00884d2c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00884d30  00 00 52 e3                                      cmp r2, #0
00884d34  2c 30 94 05                                      ldreq r3, [r4, #0x2c]
00884d38  0c 20 a0 03                                      moveq r2, #0xc
00884d3c  92 06 06 00                                      muleq r6, r2, r6
00884d40  00 30 93 05                                      ldreq r3, [r3]
00884d44  03 60 a0 11                                      movne r6, r3
00884d48  06 30 93 07                                      ldreq r3, [r3, r6]
00884d4c  04 60 93 05                                      ldreq r6, [r3, #4]
00884d50  00 00 50 e3                                      cmp r0, #0
00884d54  dc ff ff aa                                      bge #0x884ccc
00884d58  4c 21 94 e5                                      ldr r2, [r4, #0x14c]
00884d5c  00 30 a0 e3                                      mov r3, #0
00884d60  48 31 84 e5                                      str r3, [r4, #0x148]
00884d64  02 00 80 e0                                      add r0, r0, r2
00884d68  03 00 50 e1                                      cmp r0, r3
00884d6c  4c 01 84 e5                                      str r0, [r4, #0x14c]
00884d70  4c 31 84 b5                                      strlt r3, [r4, #0x14c]
00884d74  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00884d78  01 00 53 e3                                      cmp r3, #1
00884d7c  d5 ff ff 1a                                      bne #0x884cd8
00884d80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884d84  20 11 94 e5                                      ldr r1, [r4, #0x120]
00884d88  0c 70 a0 e3                                      mov r7, #0xc
00884d8c  00 30 93 e5                                      ldr r3, [r3]
00884d90  04 00 8d e2                                      add r0, sp, #4
00884d94  97 31 21 e0                                      mla r1, r7, r1, r3
00884d98  97 b1 ff eb                                      bl #0x8713fc
00884d9c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00884da0  05 00 9d e9                                      ldmib sp, {r0, r2}
00884da4  01 00 53 e3                                      cmp r3, #1
00884da8  4b 00 00 0a                                      beq #0x884edc
00884dac  20 21 94 e5                                      ldr r2, [r4, #0x120]
00884db0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884db4  97 02 07 e0                                      mul r7, r7, r2
00884db8  00 30 93 e5                                      ldr r3, [r3]
00884dbc  07 30 93 e7                                      ldr r3, [r3, r7]
00884dc0  08 20 93 e5                                      ldr r2, [r3, #8]
00884dc4  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
00884dc8  01 60 66 e2                                      rsb r6, r6, #1
00884dcc  02 60 86 e0                                      add r6, r6, r2
00884dd0  03 00 56 e1                                      cmp r6, r3
00884dd4  4c 61 84 b5                                      strlt r6, [r4, #0x14c]
00884dd8  00 00 50 e3                                      cmp r0, #0
00884ddc  bd ff ff 0a                                      beq #0x884cd8
00884de0  97 2d ea eb                                      bl #0x310444
00884de4  bb ff ff ea                                      b #0x884cd8
00884de8  01 30 a0 e3                                      mov r3, #1
00884dec  04 20 a0 e3                                      mov r2, #4
00884df0  00 00 55 e3                                      cmp r5, #0
00884df4  3c 31 80 e5                                      str r3, [r0, #0x13c]
00884df8  44 21 80 e5                                      str r2, [r0, #0x144]
00884dfc  38 31 80 e5                                      str r3, [r0, #0x138]
00884e00  64 61 80 e5                                      str r6, [r0, #0x164]
00884e04  9d ff ff 1a                                      bne #0x884c80
00884e08  58 51 84 e5                                      str r5, [r4, #0x158]
00884e0c  48 51 84 e5                                      str r5, [r4, #0x148]
00884e10  4c 51 84 e5                                      str r5, [r4, #0x14c]
00884e14  50 51 84 e5                                      str r5, [r4, #0x150]
00884e18  54 51 84 e5                                      str r5, [r4, #0x154]
00884e1c  b4 ff ff ea                                      b #0x884cf4
00884e20  00 30 a0 e3                                      mov r3, #0
00884e24  58 31 84 e5                                      str r3, [r4, #0x158]
00884e28  48 31 84 e5                                      str r3, [r4, #0x148]
00884e2c  4c 31 84 e5                                      str r3, [r4, #0x14c]
00884e30  50 31 84 e5                                      str r3, [r4, #0x150]
00884e34  54 31 84 e5                                      str r3, [r4, #0x154]
00884e38  ad ff ff ea                                      b #0x884cf4
00884e3c  7c a0 94 e5                                      ldr sl, [r4, #0x7c]
00884e40  00 00 5a e3                                      cmp sl, #0
00884e44  9c ff ff 1a                                      bne #0x884cbc
00884e48  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884e4c  0c 20 a0 e3                                      mov r2, #0xc
00884e50  92 06 06 e0                                      mul r6, r2, r6
00884e54  00 30 93 e5                                      ldr r3, [r3]
00884e58  14 10 95 e5                                      ldr r1, [r5, #0x14]
00884e5c  08 00 a0 e1                                      mov r0, r8
00884e60  06 30 93 e7                                      ldr r3, [r3, r6]
00884e64  04 60 93 e5                                      ldr r6, [r3, #4]
00884e68  bf 27 ea eb                                      bl #0x30ed6c
00884e6c  96 25 ea eb                                      bl #0x30e4cc
00884e70  80 30 94 e5                                      ldr r3, [r4, #0x80]
00884e74  01 00 53 e3                                      cmp r3, #1
00884e78  68 31 94 e5                                      ldr r3, [r4, #0x168]
00884e7c  06 00 80 00                                      addeq r0, r0, r6
00884e80  00 00 67 00                                      rsbeq r0, r7, r0
00884e84  00 00 67 10                                      rsbne r0, r7, r0
00884e88  03 00 80 e0                                      add r0, r0, r3
00884e8c  0a 60 a0 01                                      moveq r6, sl
00884e90  48 01 84 e5                                      str r0, [r4, #0x148]
00884e94  8a ff ff ea                                      b #0x884cc4
00884e98  00 00 57 e3                                      cmp r7, #0
00884e9c  75 ff ff 0a                                      beq #0x884c78
00884ea0  00 30 94 e5                                      ldr r3, [r4]
00884ea4  04 00 a0 e1                                      mov r0, r4
00884ea8  0f e0 a0 e1                                      mov lr, pc
00884eac  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00884eb0  00 30 a0 e3                                      mov r3, #0
00884eb4  5c 01 84 e5                                      str r0, [r4, #0x15c]
00884eb8  60 31 c4 e5                                      strb r3, [r4, #0x160]
00884ebc  6d ff ff ea                                      b #0x884c78
00884ec0  20 61 80 e5                                      str r6, [r0, #0x120]
00884ec4  00 30 90 e5                                      ldr r3, [r0]
00884ec8  2c 11 90 e5                                      ldr r1, [r0, #0x12c]
00884ecc  0f e0 a0 e1                                      mov lr, pc
00884ed0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00884ed4  28 01 84 e5                                      str r0, [r4, #0x128]
00884ed8  63 ff ff ea                                      b #0x884c6c
00884edc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00884ee0  20 11 94 e5                                      ldr r1, [r4, #0x120]
00884ee4  02 20 60 e0                                      rsb r2, r0, r2
00884ee8  00 30 93 e5                                      ldr r3, [r3]
00884eec  97 01 07 e0                                      mul r7, r7, r1
00884ef0  42 21 a0 e1                                      asr r2, r2, #2
00884ef4  07 30 93 e7                                      ldr r3, [r3, r7]
00884ef8  01 20 42 e2                                      sub r2, r2, #1
00884efc  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
00884f00  af ff ff ea                                      b #0x884dc4

; FUNCTION 0x00884f04, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder5CleanEv
; demangled: vox::VoxNativeSubDecoder::Clean()
; decoder-mode: arm
00884f04  28 30 9f e5                                      ldr r3, [pc, #0x28]
00884f08  28 20 9f e5                                      ldr r2, [pc, #0x28]
00884f0c  10 40 2d e9                                      push {r4, lr}
00884f10  03 30 8f e0                                      add r3, pc, r3
00884f14  02 40 93 e7                                      ldr r4, [r3, r2]
00884f18  00 00 94 e5                                      ldr r0, [r4]
00884f1c  00 00 50 e3                                      cmp r0, #0
00884f20  02 00 00 0a                                      beq #0x884f30
00884f24  46 2d ea eb                                      bl #0x310444
00884f28  00 30 a0 e3                                      mov r3, #0
00884f2c  00 30 84 e5                                      str r3, [r4]
00884f30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00884f34  80 fb 10 00 a4 06 00 00                          .byte 0x80, 0xfb, 0x10, 0x00, 0xa4, 0x06, 0x00, 0x00

; FUNCTION 0x00884f3c, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder8SetStateEPNS_21NativeSubDecoderStateE
; demangled: vox::VoxNativeSubDecoder::SetState(vox::NativeSubDecoderState*)
; decoder-mode: arm
00884f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00884f40  00 40 a0 e1                                      mov r4, r0
00884f44  01 50 a0 e1                                      mov r5, r1
00884f48  30 00 90 e5                                      ldr r0, [r0, #0x30]
00884f4c  04 10 91 e5                                      ldr r1, [r1, #4]
00884f50  67 f5 ff eb                                      bl #0x8824f4
00884f54  08 30 95 e5                                      ldr r3, [r5, #8]
00884f58  41 60 a0 e3                                      mov r6, #0x41
00884f5c  6c 10 85 e2                                      add r1, r5, #0x6c
00884f60  34 30 84 e5                                      str r3, [r4, #0x34]
00884f64  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00884f68  06 20 a0 e1                                      mov r2, r6
00884f6c  98 00 84 e2                                      add r0, r4, #0x98
00884f70  38 30 84 e5                                      str r3, [r4, #0x38]
00884f74  10 30 95 e5                                      ldr r3, [r5, #0x10]
00884f78  3c 30 84 e5                                      str r3, [r4, #0x3c]
00884f7c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00884f80  40 30 84 e5                                      str r3, [r4, #0x40]
00884f84  18 30 95 e5                                      ldr r3, [r5, #0x18]
00884f88  44 30 84 e5                                      str r3, [r4, #0x44]
00884f8c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00884f90  48 30 84 e5                                      str r3, [r4, #0x48]
00884f94  20 30 d5 e5                                      ldrb r3, [r5, #0x20]
00884f98  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
00884f9c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00884fa0  50 30 84 e5                                      str r3, [r4, #0x50]
00884fa4  28 30 95 e5                                      ldr r3, [r5, #0x28]
00884fa8  54 30 84 e5                                      str r3, [r4, #0x54]
00884fac  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00884fb0  58 30 84 e5                                      str r3, [r4, #0x58]
00884fb4  30 30 95 e5                                      ldr r3, [r5, #0x30]
00884fb8  5c 30 84 e5                                      str r3, [r4, #0x5c]
00884fbc  34 30 95 e5                                      ldr r3, [r5, #0x34]
00884fc0  60 30 84 e5                                      str r3, [r4, #0x60]
00884fc4  38 30 95 e5                                      ldr r3, [r5, #0x38]
00884fc8  64 30 84 e5                                      str r3, [r4, #0x64]
00884fcc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00884fd0  68 30 84 e5                                      str r3, [r4, #0x68]
00884fd4  40 30 95 e5                                      ldr r3, [r5, #0x40]
00884fd8  6c 30 84 e5                                      str r3, [r4, #0x6c]
00884fdc  44 30 95 e5                                      ldr r3, [r5, #0x44]
00884fe0  70 30 84 e5                                      str r3, [r4, #0x70]
00884fe4  48 30 95 e5                                      ldr r3, [r5, #0x48]
00884fe8  74 30 84 e5                                      str r3, [r4, #0x74]
00884fec  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00884ff0  78 30 84 e5                                      str r3, [r4, #0x78]
00884ff4  50 30 95 e5                                      ldr r3, [r5, #0x50]
00884ff8  7c 30 84 e5                                      str r3, [r4, #0x7c]
00884ffc  54 30 95 e5                                      ldr r3, [r5, #0x54]
00885000  80 30 84 e5                                      str r3, [r4, #0x80]
00885004  58 30 95 e5                                      ldr r3, [r5, #0x58]
00885008  84 30 84 e5                                      str r3, [r4, #0x84]
0088500c  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
00885010  88 30 84 e5                                      str r3, [r4, #0x88]
00885014  60 30 95 e5                                      ldr r3, [r5, #0x60]
00885018  8c 30 84 e5                                      str r3, [r4, #0x8c]
0088501c  64 30 95 e5                                      ldr r3, [r5, #0x64]
00885020  90 30 84 e5                                      str r3, [r4, #0x90]
00885024  68 30 95 e5                                      ldr r3, [r5, #0x68]
00885028  94 30 84 e5                                      str r3, [r4, #0x94]
0088502c  0d 26 ea eb                                      bl #0x30e868
00885030  b0 10 85 e2                                      add r1, r5, #0xb0
00885034  06 20 a0 e1                                      mov r2, r6
00885038  dc 00 84 e2                                      add r0, r4, #0xdc
0088503c  09 26 ea eb                                      bl #0x30e868
00885040  06 20 a0 e1                                      mov r2, r6
00885044  12 0e 84 e2                                      add r0, r4, #0x120
00885048  f4 10 85 e2                                      add r1, r5, #0xf4
0088504c  05 26 ea eb                                      bl #0x30e868
00885050  38 31 95 e5                                      ldr r3, [r5, #0x138]
00885054  64 31 84 e5                                      str r3, [r4, #0x164]
00885058  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
0088505c  68 31 84 e5                                      str r3, [r4, #0x168]
00885060  40 31 d5 e5                                      ldrb r3, [r5, #0x140]
00885064  6c 31 c4 e5                                      strb r3, [r4, #0x16c]
00885068  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088506c, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder8GetStateEPNS_21NativeSubDecoderStateE
; demangled: vox::VoxNativeSubDecoder::GetState(vox::NativeSubDecoderState*)
; decoder-mode: arm
0088506c  70 40 2d e9                                      push {r4, r5, r6, lr}
00885070  00 50 a0 e1                                      mov r5, r0
00885074  01 40 a0 e1                                      mov r4, r1
00885078  04 00 91 e5                                      ldr r0, [r1, #4]
0088507c  30 10 95 e5                                      ldr r1, [r5, #0x30]
00885080  1b f5 ff eb                                      bl #0x8824f4
00885084  34 30 95 e5                                      ldr r3, [r5, #0x34]
00885088  41 60 a0 e3                                      mov r6, #0x41
0088508c  98 10 85 e2                                      add r1, r5, #0x98
00885090  08 30 84 e5                                      str r3, [r4, #8]
00885094  38 30 95 e5                                      ldr r3, [r5, #0x38]
00885098  06 20 a0 e1                                      mov r2, r6
0088509c  6c 00 84 e2                                      add r0, r4, #0x6c
008850a0  0c 30 84 e5                                      str r3, [r4, #0xc]
008850a4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
008850a8  10 30 84 e5                                      str r3, [r4, #0x10]
008850ac  40 30 95 e5                                      ldr r3, [r5, #0x40]
008850b0  14 30 84 e5                                      str r3, [r4, #0x14]
008850b4  44 30 95 e5                                      ldr r3, [r5, #0x44]
008850b8  18 30 84 e5                                      str r3, [r4, #0x18]
008850bc  48 30 95 e5                                      ldr r3, [r5, #0x48]
008850c0  1c 30 84 e5                                      str r3, [r4, #0x1c]
008850c4  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
008850c8  20 30 c4 e5                                      strb r3, [r4, #0x20]
008850cc  50 30 95 e5                                      ldr r3, [r5, #0x50]
008850d0  24 30 84 e5                                      str r3, [r4, #0x24]
008850d4  54 30 95 e5                                      ldr r3, [r5, #0x54]
008850d8  28 30 84 e5                                      str r3, [r4, #0x28]
008850dc  58 30 95 e5                                      ldr r3, [r5, #0x58]
008850e0  2c 30 84 e5                                      str r3, [r4, #0x2c]
008850e4  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
008850e8  30 30 84 e5                                      str r3, [r4, #0x30]
008850ec  60 30 95 e5                                      ldr r3, [r5, #0x60]
008850f0  34 30 84 e5                                      str r3, [r4, #0x34]
008850f4  64 30 95 e5                                      ldr r3, [r5, #0x64]
008850f8  38 30 84 e5                                      str r3, [r4, #0x38]
008850fc  68 30 95 e5                                      ldr r3, [r5, #0x68]
00885100  3c 30 84 e5                                      str r3, [r4, #0x3c]
00885104  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
00885108  40 30 84 e5                                      str r3, [r4, #0x40]
0088510c  70 30 95 e5                                      ldr r3, [r5, #0x70]
00885110  44 30 84 e5                                      str r3, [r4, #0x44]
00885114  74 30 95 e5                                      ldr r3, [r5, #0x74]
00885118  48 30 84 e5                                      str r3, [r4, #0x48]
0088511c  78 30 95 e5                                      ldr r3, [r5, #0x78]
00885120  4c 30 84 e5                                      str r3, [r4, #0x4c]
00885124  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
00885128  50 30 84 e5                                      str r3, [r4, #0x50]
0088512c  80 30 95 e5                                      ldr r3, [r5, #0x80]
00885130  54 30 84 e5                                      str r3, [r4, #0x54]
00885134  84 30 95 e5                                      ldr r3, [r5, #0x84]
00885138  58 30 84 e5                                      str r3, [r4, #0x58]
0088513c  88 30 95 e5                                      ldr r3, [r5, #0x88]
00885140  5c 30 84 e5                                      str r3, [r4, #0x5c]
00885144  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00885148  60 30 84 e5                                      str r3, [r4, #0x60]
0088514c  90 30 95 e5                                      ldr r3, [r5, #0x90]
00885150  64 30 84 e5                                      str r3, [r4, #0x64]
00885154  94 30 95 e5                                      ldr r3, [r5, #0x94]
00885158  68 30 84 e5                                      str r3, [r4, #0x68]
0088515c  c1 25 ea eb                                      bl #0x30e868
00885160  dc 10 85 e2                                      add r1, r5, #0xdc
00885164  06 20 a0 e1                                      mov r2, r6
00885168  b0 00 84 e2                                      add r0, r4, #0xb0
0088516c  bd 25 ea eb                                      bl #0x30e868
00885170  06 20 a0 e1                                      mov r2, r6
00885174  f4 00 84 e2                                      add r0, r4, #0xf4
00885178  12 1e 85 e2                                      add r1, r5, #0x120
0088517c  b9 25 ea eb                                      bl #0x30e868
00885180  64 31 95 e5                                      ldr r3, [r5, #0x164]
00885184  38 31 84 e5                                      str r3, [r4, #0x138]
00885188  68 31 95 e5                                      ldr r3, [r5, #0x168]
0088518c  3c 31 84 e5                                      str r3, [r4, #0x13c]
00885190  6c 31 d5 e5                                      ldrb r3, [r5, #0x16c]
00885194  40 31 c4 e5                                      strb r3, [r4, #0x140]
00885198  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088519c, declared_size=188, range_size=188, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder5ResetEv
; demangled: vox::VoxNativeSubDecoder::Reset()
; decoder-mode: arm
0088519c  70 40 2d e9                                      push {r4, r5, r6, lr}
008851a0  00 50 a0 e1                                      mov r5, r0
008851a4  30 00 90 e5                                      ldr r0, [r0, #0x30]
008851a8  b4 f4 ff eb                                      bl #0x882480
008851ac  00 60 50 e2                                      subs r6, r0, #0
008851b0  06 00 00 da                                      ble #0x8851d0
008851b4  00 40 a0 e3                                      mov r4, #0
008851b8  04 10 a0 e1                                      mov r1, r4
008851bc  30 00 95 e5                                      ldr r0, [r5, #0x30]
008851c0  01 40 84 e2                                      add r4, r4, #1
008851c4  c2 f4 ff eb                                      bl #0x8824d4
008851c8  06 00 54 e1                                      cmp r4, r6
008851cc  f9 ff ff 1a                                      bne #0x8851b8
008851d0  02 00 a0 e3                                      mov r0, #2
008851d4  00 30 e0 e3                                      mvn r3, #0
008851d8  00 20 a0 e3                                      mov r2, #0
008851dc  01 10 a0 e3                                      mov r1, #1
008851e0  e0 00 85 e5                                      str r0, [r5, #0xe0]
008851e4  03 00 a0 e3                                      mov r0, #3
008851e8  24 11 85 e5                                      str r1, [r5, #0x124]
008851ec  98 30 85 e5                                      str r3, [r5, #0x98]
008851f0  9c 00 85 e5                                      str r0, [r5, #0x9c]
008851f4  a0 20 85 e5                                      str r2, [r5, #0xa0]
008851f8  6c 11 c5 e5                                      strb r1, [r5, #0x16c]
008851fc  94 20 85 e5                                      str r2, [r5, #0x94]
00885200  64 31 85 e5                                      str r3, [r5, #0x164]
00885204  68 21 85 e5                                      str r2, [r5, #0x168]
00885208  8c 30 85 e5                                      str r3, [r5, #0x8c]
0088520c  90 30 85 e5                                      str r3, [r5, #0x90]
00885210  40 30 85 e5                                      str r3, [r5, #0x40]
00885214  44 30 85 e5                                      str r3, [r5, #0x44]
00885218  48 30 85 e5                                      str r3, [r5, #0x48]
0088521c  4c 10 c5 e5                                      strb r1, [r5, #0x4c]
00885220  34 30 85 e5                                      str r3, [r5, #0x34]
00885224  38 30 85 e5                                      str r3, [r5, #0x38]
00885228  3c 30 85 e5                                      str r3, [r5, #0x3c]
0088522c  20 31 85 e5                                      str r3, [r5, #0x120]
00885230  28 21 85 e5                                      str r2, [r5, #0x128]
00885234  dc 30 85 e5                                      str r3, [r5, #0xdc]
00885238  e4 20 85 e5                                      str r2, [r5, #0xe4]
0088523c  50 00 85 e2                                      add r0, r5, #0x50
00885240  9a f1 ff eb                                      bl #0x8818b0
00885244  64 00 85 e2                                      add r0, r5, #0x64
00885248  98 f1 ff eb                                      bl #0x8818b0
0088524c  78 00 85 e2                                      add r0, r5, #0x78
00885250  70 40 bd e8                                      pop {r4, r5, r6, lr}
00885254  95 f1 ff ea                                      b #0x8818b0

; FUNCTION 0x00885258, declared_size=548, range_size=548, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi
; demangled: vox::VoxNativeSubDecoder::MixMultipleSegments(short*, int)
; decoder-mode: arm
00885258  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088525c  00 50 a0 e1                                      mov r5, r0
00885260  f2 01 d0 e1                                      ldrsh r0, [r0, #0x12]
00885264  fa 30 d5 e1                                      ldrsh r3, [r5, #0xa]
00885268  01 40 a0 e1                                      mov r4, r1
0088526c  c0 01 a0 e1                                      asr r0, r0, #3
00885270  93 00 01 e0                                      mul r1, r3, r0
00885274  02 00 a0 e1                                      mov r0, r2
00885278  02 70 a0 e1                                      mov r7, r2
0088527c  08 24 ea eb                                      bl #0x30e2a4
00885280  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
00885284  e8 a1 9f e5                                      ldr sl, [pc, #0x1e8]
00885288  00 90 a0 e1                                      mov sb, r0
0088528c  06 60 8f e0                                      add r6, pc, r6
00885290  0a 30 96 e7                                      ldr r3, [r6, sl]
00885294  00 30 93 e5                                      ldr r3, [r3]
00885298  03 00 50 e1                                      cmp r0, r3
0088529c  3e 00 00 da                                      ble #0x88539c
008852a0  d0 81 9f e5                                      ldr r8, [pc, #0x1d0]
008852a4  08 30 96 e7                                      ldr r3, [r6, r8]
008852a8  00 00 93 e5                                      ldr r0, [r3]
008852ac  00 00 50 e3                                      cmp r0, #0
008852b0  00 00 00 0a                                      beq #0x8852b8
008852b4  62 2c ea eb                                      bl #0x310444
008852b8  87 b0 a0 e1                                      lsl fp, r7, #1
008852bc  0b 00 a0 e1                                      mov r0, fp
008852c0  8c 2c ea eb                                      bl #0x3104f8
008852c4  08 30 96 e7                                      ldr r3, [r6, r8]
008852c8  00 00 50 e3                                      cmp r0, #0
008852cc  00 00 83 e5                                      str r0, [r3]
008852d0  5e 00 00 0a                                      beq #0x885450
008852d4  0a 30 96 e7                                      ldr r3, [r6, sl]
008852d8  0b 20 a0 e1                                      mov r2, fp
008852dc  00 10 a0 e3                                      mov r1, #0
008852e0  00 90 83 e5                                      str sb, [r3]
008852e4  5d 24 ea eb                                      bl #0x30e460
008852e8  bc 30 95 e5                                      ldr r3, [r5, #0xbc]
008852ec  02 00 53 e3                                      cmp r3, #2
008852f0  00 a0 a0 d3                                      movle sl, #0
008852f4  33 00 00 ca                                      bgt #0x8853c8
008852f8  00 31 95 e5                                      ldr r3, [r5, #0x100]
008852fc  02 00 53 e3                                      cmp r3, #2
00885300  41 00 00 ca                                      bgt #0x88540c
00885304  07 20 a0 e1                                      mov r2, r7
00885308  04 10 a0 e1                                      mov r1, r4
0088530c  00 30 95 e5                                      ldr r3, [r5]
00885310  05 00 a0 e1                                      mov r0, r5
00885314  0f e0 a0 e1                                      mov lr, pc
00885318  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088531c  12 3e 85 e2                                      add r3, r5, #0x120
00885320  00 20 a0 e1                                      mov r2, r0
00885324  00 70 a0 e1                                      mov r7, r0
00885328  04 10 a0 e1                                      mov r1, r4
0088532c  05 00 a0 e1                                      mov r0, r5
00885330  6c fc ff eb                                      bl #0x8844e8
00885334  fa 20 d5 e1                                      ldrsh r2, [r5, #0xa]
00885338  08 30 96 e7                                      ldr r3, [r6, r8]
0088533c  0a 00 57 e1                                      cmp r7, sl
00885340  0a 70 a0 b1                                      movlt r7, sl
00885344  92 09 09 e0                                      mul sb, r2, sb
00885348  00 00 93 e5                                      ldr r0, [r3]
0088534c  00 00 59 e3                                      cmp sb, #0
00885350  0f 00 00 da                                      ble #0x885394
00885354  89 90 a0 e1                                      lsl sb, sb, #1
00885358  00 30 a0 e3                                      mov r3, #0
0088535c  ff cf 0f e3                                      movw ip, #0xffff
00885360  ff 5f 07 e3                                      movw r5, #0x7fff
00885364  83 20 90 e7                                      ldr r2, [r0, r3, lsl #1]
00885368  02 19 82 e2                                      add r1, r2, #0x8000
0088536c  0c 00 51 e1                                      cmp r1, ip
00885370  b3 20 84 91                                      strhls r2, [r4, r3]
00885374  03 00 00 9a                                      bls #0x885388
00885378  00 00 52 e3                                      cmp r2, #0
0088537c  05 20 a0 a1                                      movge r2, r5
00885380  02 29 a0 b3                                      movlt r2, #0x8000
00885384  b3 20 84 e1                                      strh r2, [r4, r3]
00885388  02 30 83 e2                                      add r3, r3, #2
0088538c  09 00 53 e1                                      cmp r3, sb
00885390  f3 ff ff 1a                                      bne #0x885364
00885394  07 00 a0 e1                                      mov r0, r7
00885398  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088539c  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
008853a0  87 b0 a0 e1                                      lsl fp, r7, #1
008853a4  0b 20 a0 e1                                      mov r2, fp
008853a8  08 30 96 e7                                      ldr r3, [r6, r8]
008853ac  00 10 a0 e3                                      mov r1, #0
008853b0  00 00 93 e5                                      ldr r0, [r3]
008853b4  29 24 ea eb                                      bl #0x30e460
008853b8  bc 30 95 e5                                      ldr r3, [r5, #0xbc]
008853bc  02 00 53 e3                                      cmp r3, #2
008853c0  00 a0 a0 d3                                      movle sl, #0
008853c4  cb ff ff da                                      ble #0x8852f8
008853c8  98 b0 85 e2                                      add fp, r5, #0x98
008853cc  00 c0 95 e5                                      ldr ip, [r5]
008853d0  04 10 a0 e1                                      mov r1, r4
008853d4  07 20 a0 e1                                      mov r2, r7
008853d8  0b 30 a0 e1                                      mov r3, fp
008853dc  05 00 a0 e1                                      mov r0, r5
008853e0  0f e0 a0 e1                                      mov lr, pc
008853e4  18 f0 9c e5                                      ldr pc, [ip, #0x18]
008853e8  00 a0 a0 e1                                      mov sl, r0
008853ec  0b 30 a0 e1                                      mov r3, fp
008853f0  05 00 a0 e1                                      mov r0, r5
008853f4  04 10 a0 e1                                      mov r1, r4
008853f8  0a 20 a0 e1                                      mov r2, sl
008853fc  39 fc ff eb                                      bl #0x8844e8
00885400  00 31 95 e5                                      ldr r3, [r5, #0x100]
00885404  02 00 53 e3                                      cmp r3, #2
00885408  bd ff ff da                                      ble #0x885304
0088540c  dc b0 85 e2                                      add fp, r5, #0xdc
00885410  04 10 a0 e1                                      mov r1, r4
00885414  07 20 a0 e1                                      mov r2, r7
00885418  0b 30 a0 e1                                      mov r3, fp
0088541c  00 c0 95 e5                                      ldr ip, [r5]
00885420  05 00 a0 e1                                      mov r0, r5
00885424  0f e0 a0 e1                                      mov lr, pc
00885428  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0088542c  0b 30 a0 e1                                      mov r3, fp
00885430  00 c0 a0 e1                                      mov ip, r0
00885434  00 20 a0 e1                                      mov r2, r0
00885438  04 10 a0 e1                                      mov r1, r4
0088543c  05 00 a0 e1                                      mov r0, r5
00885440  0c 00 5a e1                                      cmp sl, ip
00885444  0c a0 a0 b1                                      movlt sl, ip
00885448  26 fc ff eb                                      bl #0x8844e8
0088544c  ac ff ff ea                                      b #0x885304
00885450  0a 20 96 e7                                      ldr r2, [r6, sl]
00885454  01 30 a0 e3                                      mov r3, #1
00885458  00 70 a0 e1                                      mov r7, r0
0088545c  00 00 82 e5                                      str r0, [r2]
00885460  44 31 85 e5                                      str r3, [r5, #0x144]
00885464  bc 30 85 e5                                      str r3, [r5, #0xbc]
00885468  00 31 85 e5                                      str r3, [r5, #0x100]
0088546c  c8 ff ff ea                                      b #0x885394
; mapping-symbol data/literal pool
00885470  04 f8 10 00 58 06 00 00 a4 06 00 00              .byte 0x04, 0xf8, 0x10, 0x00, 0x58, 0x06, 0x00, 0x00, 0xa4, 0x06, 0x00, 0x00

; FUNCTION 0x00885538, declared_size=176, range_size=176, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder25SwapOldAndCurrentSegmentsEv
; demangled: vox::VoxNativeSubDecoder::SwapOldAndCurrentSegments()
; decoder-mode: arm
00885538  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088553c  48 d0 4d e2                                      sub sp, sp, #0x48
00885540  41 50 a0 e3                                      mov r5, #0x41
00885544  12 ae 80 e2                                      add sl, r0, #0x120
00885548  04 70 8d e2                                      add r7, sp, #4
0088554c  00 30 a0 e3                                      mov r3, #0
00885550  00 c0 e0 e3                                      mvn ip, #0
00885554  00 40 a0 e1                                      mov r4, r0
00885558  01 60 a0 e3                                      mov r6, #1
0088555c  dc 80 80 e2                                      add r8, r0, #0xdc
00885560  02 90 a0 e3                                      mov sb, #2
00885564  0a 10 a0 e1                                      mov r1, sl
00885568  05 20 a0 e1                                      mov r2, r5
0088556c  07 00 a0 e1                                      mov r0, r7
00885570  40 c0 8d e5                                      str ip, [sp, #0x40]
00885574  44 30 cd e5                                      strb r3, [sp, #0x44]
00885578  04 c0 8d e5                                      str ip, [sp, #4]
0088557c  08 30 8d e5                                      str r3, [sp, #8]
00885580  0c 30 8d e5                                      str r3, [sp, #0xc]
00885584  10 30 8d e5                                      str r3, [sp, #0x10]
00885588  14 30 8d e5                                      str r3, [sp, #0x14]
0088558c  18 30 8d e5                                      str r3, [sp, #0x18]
00885590  24 30 8d e5                                      str r3, [sp, #0x24]
00885594  2c 30 8d e5                                      str r3, [sp, #0x2c]
00885598  30 30 8d e5                                      str r3, [sp, #0x30]
0088559c  34 30 8d e5                                      str r3, [sp, #0x34]
008855a0  38 30 8d e5                                      str r3, [sp, #0x38]
008855a4  3c 30 8d e5                                      str r3, [sp, #0x3c]
008855a8  1c 60 8d e5                                      str r6, [sp, #0x1c]
008855ac  20 60 8d e5                                      str r6, [sp, #0x20]
008855b0  28 90 8d e5                                      str sb, [sp, #0x28]
008855b4  ab 24 ea eb                                      bl #0x30e868
008855b8  08 10 a0 e1                                      mov r1, r8
008855bc  05 20 a0 e1                                      mov r2, r5
008855c0  0a 00 a0 e1                                      mov r0, sl
008855c4  a7 24 ea eb                                      bl #0x30e868
008855c8  24 61 84 e5                                      str r6, [r4, #0x124]
008855cc  08 00 a0 e1                                      mov r0, r8
008855d0  07 10 a0 e1                                      mov r1, r7
008855d4  05 20 a0 e1                                      mov r2, r5
008855d8  a2 24 ea eb                                      bl #0x30e868
008855dc  e0 90 84 e5                                      str sb, [r4, #0xe0]
008855e0  48 d0 8d e2                                      add sp, sp, #0x48
008855e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x008855e8, declared_size=344, range_size=344, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE
; demangled: vox::VoxNativeSubDecoder::ApplyTransitionRule(vox::TransitionRule*)
; decoder-mode: arm
008855e8  70 40 2d e9                                      push {r4, r5, r6, lr}
008855ec  01 50 a0 e1                                      mov r5, r1
008855f0  00 40 a0 e1                                      mov r4, r0
008855f4  6f fb ff eb                                      bl #0x8843b8
008855f8  00 30 95 e5                                      ldr r3, [r5]
008855fc  01 00 53 e3                                      cmp r3, #1
00885600  14 00 00 0a                                      beq #0x885658
00885604  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00885608  00 00 53 e3                                      cmp r3, #0
0088560c  3c 00 00 1a                                      bne #0x885704
00885610  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885614  48 10 94 e5                                      ldr r1, [r4, #0x48]
00885618  00 20 a0 e3                                      mov r2, #0
0088561c  00 30 e0 e3                                      mvn r3, #0
00885620  98 f3 ff eb                                      bl #0x882488
00885624  00 60 a0 e1                                      mov r6, r0
00885628  00 00 56 e3                                      cmp r6, #0
0088562c  31 00 00 0a                                      beq #0x8856f8
00885630  78 c0 84 e2                                      add ip, r4, #0x78
00885634  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00885638  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0088563c  00 30 96 e5                                      ldr r3, [r6]
00885640  00 30 8c e5                                      str r3, [ip]
00885644  00 30 95 e5                                      ldr r3, [r5]
00885648  7c 30 84 e5                                      str r3, [r4, #0x7c]
0088564c  08 30 95 e5                                      ldr r3, [r5, #8]
00885650  80 30 84 e5                                      str r3, [r4, #0x80]
00885654  70 80 bd e8                                      pop {r4, r5, r6, pc}
00885658  02 00 50 e3                                      cmp r0, #2
0088565c  2e 00 00 0a                                      beq #0x88571c
00885660  44 30 94 e5                                      ldr r3, [r4, #0x44]
00885664  40 10 94 e5                                      ldr r1, [r4, #0x40]
00885668  01 00 53 e1                                      cmp r3, r1
0088566c  2f 00 00 0a                                      beq #0x885730
00885670  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885674  48 20 94 e5                                      ldr r2, [r4, #0x48]
00885678  63 f5 ff eb                                      bl #0x882c0c
0088567c  04 00 a0 e1                                      mov r0, r4
00885680  ac ff ff eb                                      bl #0x885538
00885684  01 20 a0 e3                                      mov r2, #1
00885688  00 30 e0 e3                                      mvn r3, #0
0088568c  48 10 94 e5                                      ldr r1, [r4, #0x48]
00885690  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885694  7b f3 ff eb                                      bl #0x882488
00885698  00 60 a0 e1                                      mov r6, r0
0088569c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
008856a0  af 24 ea eb                                      bl #0x30e964
008856a4  18 10 95 e5                                      ldr r1, [r5, #0x18]
008856a8  af 25 ea eb                                      bl #0x30ed6c
008856ac  86 23 ea eb                                      bl #0x30e4cc
008856b0  00 00 50 e3                                      cmp r0, #0
008856b4  db ff ff ca                                      bgt #0x885628
008856b8  00 31 94 e5                                      ldr r3, [r4, #0x100]
008856bc  02 00 53 e3                                      cmp r3, #2
008856c0  94 30 94 c5                                      ldrgt r3, [r4, #0x94]
008856c4  00 20 a0 c3                                      movgt r2, #0
008856c8  00 21 84 c5                                      strgt r2, [r4, #0x100]
008856cc  01 30 43 c2                                      subgt r3, r3, #1
008856d0  94 30 84 c5                                      strgt r3, [r4, #0x94]
008856d4  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
008856d8  02 00 53 e3                                      cmp r3, #2
008856dc  d1 ff ff da                                      ble #0x885628
008856e0  94 30 94 e5                                      ldr r3, [r4, #0x94]
008856e4  00 20 a0 e3                                      mov r2, #0
008856e8  bc 20 84 e5                                      str r2, [r4, #0xbc]
008856ec  01 30 43 e2                                      sub r3, r3, #1
008856f0  94 30 84 e5                                      str r3, [r4, #0x94]
008856f4  cb ff ff ea                                      b #0x885628
008856f8  00 30 e0 e3                                      mvn r3, #0
008856fc  78 30 84 e5                                      str r3, [r4, #0x78]
00885700  70 80 bd e8                                      pop {r4, r5, r6, pc}
00885704  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885708  48 10 94 e5                                      ldr r1, [r4, #0x48]
0088570c  70 f3 ff eb                                      bl #0x8824d4
00885710  00 30 a0 e3                                      mov r3, #0
00885714  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
00885718  bc ff ff ea                                      b #0x885610
0088571c  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885720  44 10 94 e5                                      ldr r1, [r4, #0x44]
00885724  48 20 94 e5                                      ldr r2, [r4, #0x48]
00885728  37 f5 ff eb                                      bl #0x882c0c
0088572c  d4 ff ff ea                                      b #0x885684
00885730  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885734  6b f3 ff eb                                      bl #0x8824e8
00885738  40 10 94 e5                                      ldr r1, [r4, #0x40]
0088573c  cb ff ff ea                                      b #0x885670

; FUNCTION 0x00885740, declared_size=580, range_size=580, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv
; demangled: vox::VoxNativeSubDecoder::UpdateSegmentsStates()
; decoder-mode: arm
00885740  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00885744  20 10 90 e5                                      ldr r1, [r0, #0x20]
00885748  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0088574c  38 20 90 e5                                      ldr r2, [r0, #0x38]
00885750  04 10 91 e5                                      ldr r1, [r1, #4]
00885754  00 40 a0 e1                                      mov r4, r0
00885758  02 00 53 e1                                      cmp r3, r2
0088575c  03 51 91 e7                                      ldr r5, [r1, r3, lsl #2]
00885760  0f 00 00 0a                                      beq #0x8857a4
00885764  00 00 52 e3                                      cmp r2, #0
00885768  0d 00 00 ba                                      blt #0x8857a4
0088576c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00885770  90 20 90 e5                                      ldr r2, [r0, #0x90]
00885774  24 60 a0 e3                                      mov r6, #0x24
00885778  04 30 93 e5                                      ldr r3, [r3, #4]
0088577c  78 70 80 e2                                      add r7, r0, #0x78
00885780  96 32 26 e0                                      mla r6, r6, r2, r3
00885784  06 10 a0 e1                                      mov r1, r6
00885788  96 ff ff eb                                      bl #0x8855e8
0088578c  78 30 94 e5                                      ldr r3, [r4, #0x78]
00885790  00 00 53 e3                                      cmp r3, #0
00885794  14 00 00 aa                                      bge #0x8857ec
00885798  01 00 73 e3                                      cmn r3, #1
0088579c  30 00 00 1a                                      bne #0x885864
008857a0  50 00 00 ea                                      b #0x8858e8
008857a4  30 00 94 e5                                      ldr r0, [r4, #0x30]
008857a8  05 10 a0 e1                                      mov r1, r5
008857ac  00 20 a0 e3                                      mov r2, #0
008857b0  00 30 e0 e3                                      mvn r3, #0
008857b4  33 f3 ff eb                                      bl #0x882488
008857b8  00 c0 50 e2                                      subs ip, r0, #0
008857bc  45 00 00 0a                                      beq #0x8858d8
008857c0  78 70 84 e2                                      add r7, r4, #0x78
008857c4  07 60 a0 e1                                      mov r6, r7
008857c8  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
008857cc  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
008857d0  00 20 9c e5                                      ldr r2, [ip]
008857d4  06 30 a0 e1                                      mov r3, r6
008857d8  00 60 a0 e3                                      mov r6, #0
008857dc  00 20 83 e5                                      str r2, [r3]
008857e0  78 30 94 e5                                      ldr r3, [r4, #0x78]
008857e4  00 00 53 e3                                      cmp r3, #0
008857e8  ea ff ff ba                                      blt #0x885798
008857ec  04 00 a0 e1                                      mov r0, r4
008857f0  06 10 a0 e1                                      mov r1, r6
008857f4  1d fb ff eb                                      bl #0x884470
008857f8  00 80 50 e2                                      subs r8, r0, #0
008857fc  94 30 94 05                                      ldreq r3, [r4, #0x94]
00885800  04 00 00 0a                                      beq #0x885818
00885804  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885808  02 00 53 e3                                      cmp r3, #2
0088580c  2a 00 00 ca                                      bgt #0x8858bc
00885810  01 30 83 e2                                      add r3, r3, #1
00885814  94 30 84 e5                                      str r3, [r4, #0x94]
00885818  02 00 53 e3                                      cmp r3, #2
0088581c  26 00 00 ca                                      bgt #0x8858bc
00885820  02 00 00 1a                                      bne #0x885830
00885824  04 00 a0 e1                                      mov r0, r4
00885828  06 10 a0 e1                                      mov r1, r6
0088582c  ed fb ff eb                                      bl #0x8847e8
00885830  06 10 a0 e1                                      mov r1, r6
00885834  08 20 a0 e1                                      mov r2, r8
00885838  04 00 a0 e1                                      mov r0, r4
0088583c  e0 fc ff eb                                      bl #0x884bc4
00885840  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885844  00 00 53 e3                                      cmp r3, #0
00885848  01 30 a0 13                                      movne r3, #1
0088584c  60 31 c4 15                                      strbne r3, [r4, #0x160]
00885850  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00885854  01 00 53 e3                                      cmp r3, #1
00885858  27 00 00 0a                                      beq #0x8858fc
0088585c  00 30 e0 e3                                      mvn r3, #0
00885860  64 31 84 e5                                      str r3, [r4, #0x164]
00885864  38 00 94 e5                                      ldr r0, [r4, #0x38]
00885868  44 20 94 e5                                      ldr r2, [r4, #0x44]
0088586c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00885870  48 30 94 e5                                      ldr r3, [r4, #0x48]
00885874  34 00 84 e5                                      str r0, [r4, #0x34]
00885878  38 10 84 e5                                      str r1, [r4, #0x38]
0088587c  40 20 84 e5                                      str r2, [r4, #0x40]
00885880  44 30 84 e5                                      str r3, [r4, #0x44]
00885884  50 50 84 e2                                      add r5, r4, #0x50
00885888  64 c0 84 e2                                      add ip, r4, #0x64
0088588c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00885890  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00885894  00 30 9c e5                                      ldr r3, [ip]
00885898  64 60 84 e2                                      add r6, r4, #0x64
0088589c  00 30 85 e5                                      str r3, [r5]
008858a0  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
008858a4  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
008858a8  00 30 97 e5                                      ldr r3, [r7]
008858ac  00 30 8c e5                                      str r3, [ip]
008858b0  90 30 94 e5                                      ldr r3, [r4, #0x90]
008858b4  8c 30 84 e5                                      str r3, [r4, #0x8c]
008858b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008858bc  04 00 a0 e1                                      mov r0, r4
008858c0  06 10 a0 e1                                      mov r1, r6
008858c4  7a fc ff eb                                      bl #0x884ab4
008858c8  04 00 a0 e1                                      mov r0, r4
008858cc  06 10 a0 e1                                      mov r1, r6
008858d0  c4 fb ff eb                                      bl #0x8847e8
008858d4  d5 ff ff ea                                      b #0x885830
008858d8  04 70 a0 e1                                      mov r7, r4
008858dc  00 30 e0 e3                                      mvn r3, #0
008858e0  78 30 a7 e5                                      str r3, [r7, #0x78]!
008858e4  0c 60 a0 e1                                      mov r6, ip
008858e8  06 10 a0 e1                                      mov r1, r6
008858ec  04 00 a0 e1                                      mov r0, r4
008858f0  00 20 a0 e3                                      mov r2, #0
008858f4  b2 fc ff eb                                      bl #0x884bc4
008858f8  d9 ff ff ea                                      b #0x885864
008858fc  05 10 a0 e1                                      mov r1, r5
00885900  30 00 94 e5                                      ldr r0, [r4, #0x30]
00885904  ef f2 ff eb                                      bl #0x8824c8
00885908  00 00 50 e3                                      cmp r0, #0
0088590c  d2 ff ff 0a                                      beq #0x88585c
00885910  08 30 90 e5                                      ldr r3, [r0, #8]
00885914  01 00 53 e3                                      cmp r3, #1
00885918  0b 00 00 0a                                      beq #0x88594c
0088591c  84 30 94 e5                                      ldr r3, [r4, #0x84]
00885920  01 00 53 e3                                      cmp r3, #1
00885924  ce ff ff 1a                                      bne #0x885864
00885928  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0088592c  20 31 94 e5                                      ldr r3, [r4, #0x120]
00885930  0c 10 a0 e3                                      mov r1, #0xc
00885934  00 20 92 e5                                      ldr r2, [r2]
00885938  91 03 03 e0                                      mul r3, r1, r3
0088593c  03 30 92 e7                                      ldr r3, [r2, r3]
00885940  08 30 93 e5                                      ldr r3, [r3, #8]
00885944  64 31 84 e5                                      str r3, [r4, #0x164]
00885948  c5 ff ff ea                                      b #0x885864
0088594c  00 10 90 e5                                      ldr r1, [r0]
00885950  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00885954  20 01 94 e5                                      ldr r0, [r4, #0x120]
00885958  0c 20 a0 e3                                      mov r2, #0xc
0088595c  00 30 93 e5                                      ldr r3, [r3]
00885960  92 01 01 e0                                      mul r1, r2, r1
00885964  92 00 02 e0                                      mul r2, r2, r0
00885968  01 10 93 e7                                      ldr r1, [r3, r1]
0088596c  02 20 93 e7                                      ldr r2, [r3, r2]
00885970  04 30 91 e5                                      ldr r3, [r1, #4]
00885974  08 20 92 e5                                      ldr r2, [r2, #8]
00885978  02 30 63 e0                                      rsb r3, r3, r2
0088597c  64 31 84 e5                                      str r3, [r4, #0x164]
00885980  b7 ff ff ea                                      b #0x885864

; FUNCTION 0x00885984, declared_size=184, range_size=184, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi
; demangled: vox::VoxNativeSubDecoder::InterpretTransitionRule(int)
; decoder-mode: arm
00885984  10 40 2d e9                                      push {r4, lr}
00885988  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0088598c  24 20 a0 e3                                      mov r2, #0x24
00885990  00 40 a0 e1                                      mov r4, r0
00885994  04 30 93 e5                                      ldr r3, [r3, #4]
00885998  92 31 23 e0                                      mla r3, r2, r1, r3
0088599c  04 30 93 e5                                      ldr r3, [r3, #4]
008859a0  00 00 53 e3                                      cmp r3, #0
008859a4  14 00 00 0a                                      beq #0x8859fc
008859a8  20 30 90 e5                                      ldr r3, [r0, #0x20]
008859ac  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
008859b0  30 00 90 e5                                      ldr r0, [r0, #0x30]
008859b4  04 30 93 e5                                      ldr r3, [r3, #4]
008859b8  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
008859bc  c1 f2 ff eb                                      bl #0x8824c8
008859c0  00 00 50 e3                                      cmp r0, #0
008859c4  0b 00 00 0a                                      beq #0x8859f8
008859c8  08 30 90 e5                                      ldr r3, [r0, #8]
008859cc  01 00 53 e3                                      cmp r3, #1
008859d0  0b 00 00 0a                                      beq #0x885a04
008859d4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
008859d8  20 31 94 e5                                      ldr r3, [r4, #0x120]
008859dc  0c 10 a0 e3                                      mov r1, #0xc
008859e0  00 20 92 e5                                      ldr r2, [r2]
008859e4  91 03 03 e0                                      mul r3, r1, r3
008859e8  03 30 92 e7                                      ldr r3, [r2, r3]
008859ec  08 30 93 e5                                      ldr r3, [r3, #8]
008859f0  64 31 84 e5                                      str r3, [r4, #0x164]
008859f4  10 80 bd e8                                      pop {r4, pc}
008859f8  04 00 a0 e1                                      mov r0, r4
008859fc  10 40 bd e8                                      pop {r4, lr}
00885a00  4e ff ff ea                                      b #0x885740
00885a04  00 10 90 e5                                      ldr r1, [r0]
00885a08  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00885a0c  20 01 94 e5                                      ldr r0, [r4, #0x120]
00885a10  0c 20 a0 e3                                      mov r2, #0xc
00885a14  00 30 93 e5                                      ldr r3, [r3]
00885a18  92 01 01 e0                                      mul r1, r2, r1
00885a1c  92 00 02 e0                                      mul r2, r2, r0
00885a20  01 10 93 e7                                      ldr r1, [r3, r1]
00885a24  02 20 93 e7                                      ldr r2, [r3, r2]
00885a28  04 30 91 e5                                      ldr r3, [r1, #4]
00885a2c  08 20 92 e5                                      ldr r2, [r2, #8]
00885a30  02 30 63 e0                                      rsb r3, r3, r2
00885a34  64 31 84 e5                                      str r3, [r4, #0x164]
00885a38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00885a3c, declared_size=132, range_size=132, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder8SetStateEi
; demangled: vox::VoxNativeSubDecoder::SetState(int)
; decoder-mode: arm
00885a3c  38 30 90 e5                                      ldr r3, [r0, #0x38]
00885a40  04 40 2d e5                                      str r4, [sp, #-4]!
00885a44  00 00 53 e3                                      cmp r3, #0
00885a48  3c 10 80 e5                                      str r1, [r0, #0x3c]
00885a4c  0b 00 00 ba                                      blt #0x885a80
00885a50  24 c0 90 e5                                      ldr ip, [r0, #0x24]
00885a54  0c 20 a0 e3                                      mov r2, #0xc
00885a58  92 03 02 e0                                      mul r2, r2, r3
00885a5c  00 40 9c e5                                      ldr r4, [ip]
00885a60  02 40 94 e7                                      ldr r4, [r4, r2]
00885a64  81 41 94 e7                                      ldr r4, [r4, r1, lsl #3]
00885a68  90 40 80 e5                                      str r4, [r0, #0x90]
00885a6c  00 c0 9c e5                                      ldr ip, [ip]
00885a70  02 20 9c e7                                      ldr r2, [ip, r2]
00885a74  81 21 82 e0                                      add r2, r2, r1, lsl #3
00885a78  04 20 d2 e5                                      ldrb r2, [r2, #4]
00885a7c  4c 20 c0 e5                                      strb r2, [r0, #0x4c]
00885a80  20 c0 90 e5                                      ldr ip, [r0, #0x20]
00885a84  90 20 90 e5                                      ldr r2, [r0, #0x90]
00885a88  04 c0 9c e5                                      ldr ip, [ip, #4]
00885a8c  00 00 52 e3                                      cmp r2, #0
00885a90  01 11 9c e7                                      ldr r1, [ip, r1, lsl #2]
00885a94  48 10 80 e5                                      str r1, [r0, #0x48]
00885a98  03 00 00 aa                                      bge #0x885aac
00885a9c  01 00 73 e3                                      cmn r3, #1
00885aa0  04 00 00 0a                                      beq #0x885ab8
00885aa4  10 00 bd e8                                      ldm sp!, {r4}
00885aa8  1e ff 2f e1                                      bx lr
00885aac  02 10 a0 e1                                      mov r1, r2
00885ab0  10 00 bd e8                                      ldm sp!, {r4}
00885ab4  b2 ff ff ea                                      b #0x885984
00885ab8  10 00 bd e8                                      ldm sp!, {r4}
00885abc  1f ff ff ea                                      b #0x885740

; FUNCTION 0x00885ac0, declared_size=348, range_size=348, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder13EmulateDecodeEi
; demangled: vox::VoxNativeSubDecoder::EmulateDecode(int)
; decoder-mode: arm
00885ac0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00885ac4  f2 71 d0 e1                                      ldrsh r7, [r0, #0x12]
00885ac8  fa 30 d0 e1                                      ldrsh r3, [r0, #0xa]
00885acc  00 40 a0 e1                                      mov r4, r0
00885ad0  c7 71 a0 e1                                      asr r7, r7, #3
00885ad4  93 07 07 e0                                      mul r7, r3, r7
00885ad8  01 50 a0 e1                                      mov r5, r1
00885adc  01 00 a0 e1                                      mov r0, r1
00885ae0  07 10 a0 e1                                      mov r1, r7
00885ae4  86 23 ea eb                                      bl #0x30e904
00885ae8  64 61 94 e5                                      ldr r6, [r4, #0x164]
00885aec  05 80 61 e0                                      rsb r8, r1, r5
00885af0  b8 50 d4 e1                                      ldrh r5, [r4, #8]
00885af4  00 00 56 e3                                      cmp r6, #0
00885af8  06 00 00 ba                                      blt #0x885b18
00885afc  07 10 a0 e1                                      mov r1, r7
00885b00  08 00 a0 e1                                      mov r0, r8
00885b04  e6 21 ea eb                                      bl #0x30e2a4
00885b08  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885b0c  03 00 80 e0                                      add r0, r0, r3
00885b10  00 00 56 e1                                      cmp r6, r0
00885b14  2b 00 00 da                                      ble #0x885bc8
00885b18  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885b1c  01 00 53 e3                                      cmp r3, #1
00885b20  1d 00 00 0a                                      beq #0x885b9c
00885b24  03 00 00 da                                      ble #0x885b38
00885b28  08 10 a0 e1                                      mov r1, r8
00885b2c  04 00 a0 e1                                      mov r0, r4
00885b30  ec f9 ff eb                                      bl #0x8842e8
00885b34  00 a0 a0 e1                                      mov sl, r0
00885b38  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00885b3c  01 00 53 e3                                      cmp r3, #1
00885b40  25 00 00 da                                      ble #0x885bdc
00885b44  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885b48  01 00 53 e3                                      cmp r3, #1
00885b4c  28 00 00 da                                      ble #0x885bf4
00885b50  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885b54  01 00 53 e3                                      cmp r3, #1
00885b58  2b 00 00 da                                      ble #0x885c0c
00885b5c  11 00 55 e3                                      cmp r5, #0x11
00885b60  0b 00 00 1a                                      bne #0x885b94
00885b64  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00885b68  03 00 53 e3                                      cmp r3, #3
00885b6c  01 30 a0 03                                      moveq r3, #1
00885b70  d8 30 c4 05                                      strbeq r3, [r4, #0xd8]
00885b74  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885b78  03 00 53 e3                                      cmp r3, #3
00885b7c  01 30 a0 03                                      moveq r3, #1
00885b80  1c 31 c4 05                                      strbeq r3, [r4, #0x11c]
00885b84  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885b88  03 00 53 e3                                      cmp r3, #3
00885b8c  01 30 a0 03                                      moveq r3, #1
00885b90  60 31 c4 05                                      strbeq r3, [r4, #0x160]
00885b94  0a 00 a0 e1                                      mov r0, sl
00885b98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885b9c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00885ba0  00 00 53 e3                                      cmp r3, #0
00885ba4  df ff ff ca                                      bgt #0x885b28
00885ba8  04 20 a0 e1                                      mov r2, r4
00885bac  20 31 92 e4                                      ldr r3, [r2], #0x120
00885bb0  08 10 a0 e1                                      mov r1, r8
00885bb4  04 00 a0 e1                                      mov r0, r4
00885bb8  0f e0 a0 e1                                      mov lr, pc
00885bbc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00885bc0  00 a0 a0 e1                                      mov sl, r0
00885bc4  db ff ff ea                                      b #0x885b38
00885bc8  06 60 63 e0                                      rsb r6, r3, r6
00885bcc  68 61 84 e5                                      str r6, [r4, #0x168]
00885bd0  04 00 a0 e1                                      mov r0, r4
00885bd4  d9 fe ff eb                                      bl #0x885740
00885bd8  ce ff ff ea                                      b #0x885b18
00885bdc  04 00 a0 e1                                      mov r0, r4
00885be0  98 10 84 e2                                      add r1, r4, #0x98
00885be4  d2 fa ff eb                                      bl #0x884734
00885be8  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885bec  01 00 53 e3                                      cmp r3, #1
00885bf0  d6 ff ff ca                                      bgt #0x885b50
00885bf4  04 00 a0 e1                                      mov r0, r4
00885bf8  dc 10 84 e2                                      add r1, r4, #0xdc
00885bfc  cc fa ff eb                                      bl #0x884734
00885c00  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885c04  01 00 53 e3                                      cmp r3, #1
00885c08  d3 ff ff ca                                      bgt #0x885b5c
00885c0c  04 00 a0 e1                                      mov r0, r4
00885c10  12 1e 84 e2                                      add r1, r4, #0x120
00885c14  c6 fa ff eb                                      bl #0x884734
00885c18  cf ff ff ea                                      b #0x885b5c

; FUNCTION 0x00885c1c, declared_size=296, range_size=296, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder6DecodeEPvi
; demangled: vox::VoxNativeSubDecoder::Decode(void*, int)
; decoder-mode: arm
00885c1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00885c20  f2 81 d0 e1                                      ldrsh r8, [r0, #0x12]
00885c24  fa 30 d0 e1                                      ldrsh r3, [r0, #0xa]
00885c28  00 40 a0 e1                                      mov r4, r0
00885c2c  c8 81 a0 e1                                      asr r8, r8, #3
00885c30  93 08 08 e0                                      mul r8, r3, r8
00885c34  01 a0 a0 e1                                      mov sl, r1
00885c38  02 00 a0 e1                                      mov r0, r2
00885c3c  08 10 a0 e1                                      mov r1, r8
00885c40  02 60 a0 e1                                      mov r6, r2
00885c44  2e 23 ea eb                                      bl #0x30e904
00885c48  64 71 94 e5                                      ldr r7, [r4, #0x164]
00885c4c  06 60 61 e0                                      rsb r6, r1, r6
00885c50  00 00 57 e3                                      cmp r7, #0
00885c54  06 00 00 ba                                      blt #0x885c74
00885c58  08 10 a0 e1                                      mov r1, r8
00885c5c  06 00 a0 e1                                      mov r0, r6
00885c60  8f 21 ea eb                                      bl #0x30e2a4
00885c64  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885c68  03 00 80 e0                                      add r0, r0, r3
00885c6c  00 00 57 e1                                      cmp r7, r0
00885c70  1f 00 00 da                                      ble #0x885cf4
00885c74  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885c78  01 00 53 e3                                      cmp r3, #1
00885c7c  0f 00 00 da                                      ble #0x885cc0
00885c80  0a 10 a0 e1                                      mov r1, sl
00885c84  06 20 a0 e1                                      mov r2, r6
00885c88  04 00 a0 e1                                      mov r0, r4
00885c8c  71 fd ff eb                                      bl #0x885258
00885c90  00 50 a0 e1                                      mov r5, r0
00885c94  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00885c98  01 00 53 e3                                      cmp r3, #1
00885c9c  1e 00 00 da                                      ble #0x885d1c
00885ca0  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885ca4  01 00 53 e3                                      cmp r3, #1
00885ca8  21 00 00 da                                      ble #0x885d34
00885cac  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885cb0  01 00 53 e3                                      cmp r3, #1
00885cb4  13 00 00 da                                      ble #0x885d08
00885cb8  05 00 a0 e1                                      mov r0, r5
00885cbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885cc0  f3 ff ff 1a                                      bne #0x885c94
00885cc4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00885cc8  00 00 53 e3                                      cmp r3, #0
00885ccc  eb ff ff ca                                      bgt #0x885c80
00885cd0  04 30 a0 e1                                      mov r3, r4
00885cd4  20 c1 93 e4                                      ldr ip, [r3], #0x120
00885cd8  0a 10 a0 e1                                      mov r1, sl
00885cdc  06 20 a0 e1                                      mov r2, r6
00885ce0  04 00 a0 e1                                      mov r0, r4
00885ce4  0f e0 a0 e1                                      mov lr, pc
00885ce8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00885cec  00 50 a0 e1                                      mov r5, r0
00885cf0  e7 ff ff ea                                      b #0x885c94
00885cf4  07 70 63 e0                                      rsb r7, r3, r7
00885cf8  68 71 84 e5                                      str r7, [r4, #0x168]
00885cfc  04 00 a0 e1                                      mov r0, r4
00885d00  8e fe ff eb                                      bl #0x885740
00885d04  da ff ff ea                                      b #0x885c74
00885d08  04 00 a0 e1                                      mov r0, r4
00885d0c  12 1e 84 e2                                      add r1, r4, #0x120
00885d10  87 fa ff eb                                      bl #0x884734
00885d14  05 00 a0 e1                                      mov r0, r5
00885d18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885d1c  04 00 a0 e1                                      mov r0, r4
00885d20  98 10 84 e2                                      add r1, r4, #0x98
00885d24  82 fa ff eb                                      bl #0x884734
00885d28  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885d2c  01 00 53 e3                                      cmp r3, #1
00885d30  dd ff ff ca                                      bgt #0x885cac
00885d34  04 00 a0 e1                                      mov r0, r4
00885d38  dc 10 84 e2                                      add r1, r4, #0xdc
00885d3c  7c fa ff eb                                      bl #0x884734
00885d40  d9 ff ff ea                                      b #0x885cac

; FUNCTION 0x00885d44, declared_size=460, range_size=460, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoderC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoder::VoxNativeSubDecoder(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00885d44  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
00885d48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00885d4c  b8 e1 9f e5                                      ldr lr, [pc, #0x1b8]
00885d50  0c c0 8f e0                                      add ip, pc, ip
00885d54  04 10 80 e5                                      str r1, [r0, #4]
00885d58  0e e0 9c e7                                      ldr lr, [ip, lr]
00885d5c  20 30 80 e5                                      str r3, [r0, #0x20]
00885d60  00 50 a0 e3                                      mov r5, #0
00885d64  08 e0 8e e2                                      add lr, lr, #8
00885d68  00 e0 80 e5                                      str lr, [r0]
00885d6c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00885d70  00 60 e0 e3                                      mvn r6, #0
00885d74  01 70 a0 e3                                      mov r7, #1
00885d78  18 30 80 e5                                      str r3, [r0, #0x18]
00885d7c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00885d80  00 40 a0 e1                                      mov r4, r0
00885d84  02 80 a0 e1                                      mov r8, r2
00885d88  1c 30 80 e5                                      str r3, [r0, #0x1c]
00885d8c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00885d90  24 30 80 e5                                      str r3, [r0, #0x24]
00885d94  28 30 9d e5                                      ldr r3, [sp, #0x28]
00885d98  28 30 80 e5                                      str r3, [r0, #0x28]
00885d9c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00885da0  2c 30 80 e5                                      str r3, [r0, #0x2c]
00885da4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00885da8  b8 50 c0 e1                                      strh r5, [r0, #8]
00885dac  ba 50 c0 e1                                      strh r5, [r0, #0xa]
00885db0  30 30 80 e5                                      str r3, [r0, #0x30]
00885db4  0c 50 80 e5                                      str r5, [r0, #0xc]
00885db8  b0 51 c0 e1                                      strh r5, [r0, #0x10]
00885dbc  b2 51 c0 e1                                      strh r5, [r0, #0x12]
00885dc0  34 60 80 e5                                      str r6, [r0, #0x34]
00885dc4  38 60 80 e5                                      str r6, [r0, #0x38]
00885dc8  3c 60 80 e5                                      str r6, [r0, #0x3c]
00885dcc  40 60 80 e5                                      str r6, [r0, #0x40]
00885dd0  44 60 80 e5                                      str r6, [r0, #0x44]
00885dd4  48 60 80 e5                                      str r6, [r0, #0x48]
00885dd8  4c 70 c0 e5                                      strb r7, [r0, #0x4c]
00885ddc  50 00 80 e2                                      add r0, r0, #0x50
00885de0  93 ee ff eb                                      bl #0x881834
00885de4  64 00 84 e2                                      add r0, r4, #0x64
00885de8  91 ee ff eb                                      bl #0x881834
00885dec  78 00 84 e2                                      add r0, r4, #0x78
00885df0  8f ee ff eb                                      bl #0x881834
00885df4  02 30 a0 e3                                      mov r3, #2
00885df8  03 10 a0 e3                                      mov r1, #3
00885dfc  bc 30 84 e5                                      str r3, [r4, #0xbc]
00885e00  00 31 84 e5                                      str r3, [r4, #0x100]
00885e04  8c 60 84 e5                                      str r6, [r4, #0x8c]
00885e08  90 60 84 e5                                      str r6, [r4, #0x90]
00885e0c  94 50 84 e5                                      str r5, [r4, #0x94]
00885e10  98 60 84 e5                                      str r6, [r4, #0x98]
00885e14  a0 50 84 e5                                      str r5, [r4, #0xa0]
00885e18  a4 50 84 e5                                      str r5, [r4, #0xa4]
00885e1c  a8 50 84 e5                                      str r5, [r4, #0xa8]
00885e20  ac 50 84 e5                                      str r5, [r4, #0xac]
00885e24  b0 70 84 e5                                      str r7, [r4, #0xb0]
00885e28  b4 70 84 e5                                      str r7, [r4, #0xb4]
00885e2c  b8 50 84 e5                                      str r5, [r4, #0xb8]
00885e30  c0 50 84 e5                                      str r5, [r4, #0xc0]
00885e34  c4 50 84 e5                                      str r5, [r4, #0xc4]
00885e38  c8 50 84 e5                                      str r5, [r4, #0xc8]
00885e3c  cc 50 84 e5                                      str r5, [r4, #0xcc]
00885e40  d0 50 84 e5                                      str r5, [r4, #0xd0]
00885e44  d4 60 84 e5                                      str r6, [r4, #0xd4]
00885e48  d8 50 c4 e5                                      strb r5, [r4, #0xd8]
00885e4c  dc 60 84 e5                                      str r6, [r4, #0xdc]
00885e50  e4 50 84 e5                                      str r5, [r4, #0xe4]
00885e54  e8 50 84 e5                                      str r5, [r4, #0xe8]
00885e58  ec 50 84 e5                                      str r5, [r4, #0xec]
00885e5c  f0 50 84 e5                                      str r5, [r4, #0xf0]
00885e60  f4 70 84 e5                                      str r7, [r4, #0xf4]
00885e64  f8 70 84 e5                                      str r7, [r4, #0xf8]
00885e68  fc 50 84 e5                                      str r5, [r4, #0xfc]
00885e6c  04 51 84 e5                                      str r5, [r4, #0x104]
00885e70  08 51 84 e5                                      str r5, [r4, #0x108]
00885e74  0c 51 84 e5                                      str r5, [r4, #0x10c]
00885e78  10 51 84 e5                                      str r5, [r4, #0x110]
00885e7c  14 51 84 e5                                      str r5, [r4, #0x114]
00885e80  18 61 84 e5                                      str r6, [r4, #0x118]
00885e84  60 51 c4 e5                                      strb r5, [r4, #0x160]
00885e88  64 61 84 e5                                      str r6, [r4, #0x164]
00885e8c  68 51 84 e5                                      str r5, [r4, #0x168]
00885e90  24 71 84 e5                                      str r7, [r4, #0x124]
00885e94  e0 30 84 e5                                      str r3, [r4, #0xe0]
00885e98  9c 10 84 e5                                      str r1, [r4, #0x9c]
00885e9c  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
00885ea0  20 61 84 e5                                      str r6, [r4, #0x120]
00885ea4  28 51 84 e5                                      str r5, [r4, #0x128]
00885ea8  2c 51 84 e5                                      str r5, [r4, #0x12c]
00885eac  30 51 84 e5                                      str r5, [r4, #0x130]
00885eb0  34 51 84 e5                                      str r5, [r4, #0x134]
00885eb4  38 71 84 e5                                      str r7, [r4, #0x138]
00885eb8  3c 71 84 e5                                      str r7, [r4, #0x13c]
00885ebc  40 51 84 e5                                      str r5, [r4, #0x140]
00885ec0  44 31 84 e5                                      str r3, [r4, #0x144]
00885ec4  48 51 84 e5                                      str r5, [r4, #0x148]
00885ec8  4c 51 84 e5                                      str r5, [r4, #0x14c]
00885ecc  50 51 84 e5                                      str r5, [r4, #0x150]
00885ed0  54 51 84 e5                                      str r5, [r4, #0x154]
00885ed4  58 51 84 e5                                      str r5, [r4, #0x158]
00885ed8  5c 61 84 e5                                      str r6, [r4, #0x15c]
00885edc  6c 71 c4 e5                                      strb r7, [r4, #0x16c]
00885ee0  20 30 98 e5                                      ldr r3, [r8, #0x20]
00885ee4  04 00 a0 e1                                      mov r0, r4
00885ee8  08 30 84 e5                                      str r3, [r4, #8]
00885eec  24 30 98 e5                                      ldr r3, [r8, #0x24]
00885ef0  0c 30 84 e5                                      str r3, [r4, #0xc]
00885ef4  28 30 98 e5                                      ldr r3, [r8, #0x28]
00885ef8  10 30 84 e5                                      str r3, [r4, #0x10]
00885efc  14 30 98 e5                                      ldr r3, [r8, #0x14]
00885f00  14 30 84 e5                                      str r3, [r4, #0x14]
00885f04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00885f08  40 ed 10 00 f4 0d 00 00                          .byte 0x40, 0xed, 0x10, 0x00, 0xf4, 0x0d, 0x00, 0x00

; FUNCTION 0x00885f10, declared_size=460, range_size=460, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoderC2EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoder::VoxNativeSubDecoder(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00885f10  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
00885f14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00885f18  b8 e1 9f e5                                      ldr lr, [pc, #0x1b8]
00885f1c  0c c0 8f e0                                      add ip, pc, ip
00885f20  04 10 80 e5                                      str r1, [r0, #4]
00885f24  0e e0 9c e7                                      ldr lr, [ip, lr]
00885f28  20 30 80 e5                                      str r3, [r0, #0x20]
00885f2c  00 50 a0 e3                                      mov r5, #0
00885f30  08 e0 8e e2                                      add lr, lr, #8
00885f34  00 e0 80 e5                                      str lr, [r0]
00885f38  18 30 9d e5                                      ldr r3, [sp, #0x18]
00885f3c  00 60 e0 e3                                      mvn r6, #0
00885f40  01 70 a0 e3                                      mov r7, #1
00885f44  18 30 80 e5                                      str r3, [r0, #0x18]
00885f48  20 30 9d e5                                      ldr r3, [sp, #0x20]
00885f4c  00 40 a0 e1                                      mov r4, r0
00885f50  02 80 a0 e1                                      mov r8, r2
00885f54  1c 30 80 e5                                      str r3, [r0, #0x1c]
00885f58  24 30 9d e5                                      ldr r3, [sp, #0x24]
00885f5c  24 30 80 e5                                      str r3, [r0, #0x24]
00885f60  28 30 9d e5                                      ldr r3, [sp, #0x28]
00885f64  28 30 80 e5                                      str r3, [r0, #0x28]
00885f68  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00885f6c  2c 30 80 e5                                      str r3, [r0, #0x2c]
00885f70  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00885f74  b8 50 c0 e1                                      strh r5, [r0, #8]
00885f78  ba 50 c0 e1                                      strh r5, [r0, #0xa]
00885f7c  30 30 80 e5                                      str r3, [r0, #0x30]
00885f80  0c 50 80 e5                                      str r5, [r0, #0xc]
00885f84  b0 51 c0 e1                                      strh r5, [r0, #0x10]
00885f88  b2 51 c0 e1                                      strh r5, [r0, #0x12]
00885f8c  34 60 80 e5                                      str r6, [r0, #0x34]
00885f90  38 60 80 e5                                      str r6, [r0, #0x38]
00885f94  3c 60 80 e5                                      str r6, [r0, #0x3c]
00885f98  40 60 80 e5                                      str r6, [r0, #0x40]
00885f9c  44 60 80 e5                                      str r6, [r0, #0x44]
00885fa0  48 60 80 e5                                      str r6, [r0, #0x48]
00885fa4  4c 70 c0 e5                                      strb r7, [r0, #0x4c]
00885fa8  50 00 80 e2                                      add r0, r0, #0x50
00885fac  20 ee ff eb                                      bl #0x881834
00885fb0  64 00 84 e2                                      add r0, r4, #0x64
00885fb4  1e ee ff eb                                      bl #0x881834
00885fb8  78 00 84 e2                                      add r0, r4, #0x78
00885fbc  1c ee ff eb                                      bl #0x881834
00885fc0  02 30 a0 e3                                      mov r3, #2
00885fc4  03 10 a0 e3                                      mov r1, #3
00885fc8  bc 30 84 e5                                      str r3, [r4, #0xbc]
00885fcc  00 31 84 e5                                      str r3, [r4, #0x100]
00885fd0  8c 60 84 e5                                      str r6, [r4, #0x8c]
00885fd4  90 60 84 e5                                      str r6, [r4, #0x90]
00885fd8  94 50 84 e5                                      str r5, [r4, #0x94]
00885fdc  98 60 84 e5                                      str r6, [r4, #0x98]
00885fe0  a0 50 84 e5                                      str r5, [r4, #0xa0]
00885fe4  a4 50 84 e5                                      str r5, [r4, #0xa4]
00885fe8  a8 50 84 e5                                      str r5, [r4, #0xa8]
00885fec  ac 50 84 e5                                      str r5, [r4, #0xac]
00885ff0  b0 70 84 e5                                      str r7, [r4, #0xb0]
00885ff4  b4 70 84 e5                                      str r7, [r4, #0xb4]
00885ff8  b8 50 84 e5                                      str r5, [r4, #0xb8]
00885ffc  c0 50 84 e5                                      str r5, [r4, #0xc0]
00886000  c4 50 84 e5                                      str r5, [r4, #0xc4]
00886004  c8 50 84 e5                                      str r5, [r4, #0xc8]
00886008  cc 50 84 e5                                      str r5, [r4, #0xcc]
0088600c  d0 50 84 e5                                      str r5, [r4, #0xd0]
00886010  d4 60 84 e5                                      str r6, [r4, #0xd4]
00886014  d8 50 c4 e5                                      strb r5, [r4, #0xd8]
00886018  dc 60 84 e5                                      str r6, [r4, #0xdc]
0088601c  e4 50 84 e5                                      str r5, [r4, #0xe4]
00886020  e8 50 84 e5                                      str r5, [r4, #0xe8]
00886024  ec 50 84 e5                                      str r5, [r4, #0xec]
00886028  f0 50 84 e5                                      str r5, [r4, #0xf0]
0088602c  f4 70 84 e5                                      str r7, [r4, #0xf4]
00886030  f8 70 84 e5                                      str r7, [r4, #0xf8]
00886034  fc 50 84 e5                                      str r5, [r4, #0xfc]
00886038  04 51 84 e5                                      str r5, [r4, #0x104]
0088603c  08 51 84 e5                                      str r5, [r4, #0x108]
00886040  0c 51 84 e5                                      str r5, [r4, #0x10c]
00886044  10 51 84 e5                                      str r5, [r4, #0x110]
00886048  14 51 84 e5                                      str r5, [r4, #0x114]
0088604c  18 61 84 e5                                      str r6, [r4, #0x118]
00886050  60 51 c4 e5                                      strb r5, [r4, #0x160]
00886054  64 61 84 e5                                      str r6, [r4, #0x164]
00886058  68 51 84 e5                                      str r5, [r4, #0x168]
0088605c  24 71 84 e5                                      str r7, [r4, #0x124]
00886060  e0 30 84 e5                                      str r3, [r4, #0xe0]
00886064  9c 10 84 e5                                      str r1, [r4, #0x9c]
00886068  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
0088606c  20 61 84 e5                                      str r6, [r4, #0x120]
00886070  28 51 84 e5                                      str r5, [r4, #0x128]
00886074  2c 51 84 e5                                      str r5, [r4, #0x12c]
00886078  30 51 84 e5                                      str r5, [r4, #0x130]
0088607c  34 51 84 e5                                      str r5, [r4, #0x134]
00886080  38 71 84 e5                                      str r7, [r4, #0x138]
00886084  3c 71 84 e5                                      str r7, [r4, #0x13c]
00886088  40 51 84 e5                                      str r5, [r4, #0x140]
0088608c  44 31 84 e5                                      str r3, [r4, #0x144]
00886090  48 51 84 e5                                      str r5, [r4, #0x148]
00886094  4c 51 84 e5                                      str r5, [r4, #0x14c]
00886098  50 51 84 e5                                      str r5, [r4, #0x150]
0088609c  54 51 84 e5                                      str r5, [r4, #0x154]
008860a0  58 51 84 e5                                      str r5, [r4, #0x158]
008860a4  5c 61 84 e5                                      str r6, [r4, #0x15c]
008860a8  6c 71 c4 e5                                      strb r7, [r4, #0x16c]
008860ac  20 30 98 e5                                      ldr r3, [r8, #0x20]
008860b0  04 00 a0 e1                                      mov r0, r4
008860b4  08 30 84 e5                                      str r3, [r4, #8]
008860b8  24 30 98 e5                                      ldr r3, [r8, #0x24]
008860bc  0c 30 84 e5                                      str r3, [r4, #0xc]
008860c0  28 30 98 e5                                      ldr r3, [r8, #0x28]
008860c4  10 30 84 e5                                      str r3, [r4, #0x10]
008860c8  14 30 98 e5                                      ldr r3, [r8, #0x14]
008860cc  14 30 84 e5                                      str r3, [r4, #0x14]
008860d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008860d4  74 eb 10 00 f4 0d 00 00                          .byte 0x74, 0xeb, 0x10, 0x00, 0xf4, 0x0d, 0x00, 0x00
