; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088635c, declared_size=8, range_size=8, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM4SeekEj
; demangled: vox::VoxNativeSubDecoderIMAADPCM::Seek(unsigned int)
; decoder-mode: arm
0088635c  00 00 a0 e3                                      mov r0, #0
00886360  1e ff 2f e1                                      bx lr

; FUNCTION 0x00886364, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM18EmulateDecodeBlockEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock(vox::SegmentState*)
; decoder-mode: arm
00886364  70 40 2d e9                                      push {r4, r5, r6, lr}
00886368  18 20 90 e5                                      ldr r2, [r0, #0x18]
0088636c  00 30 91 e5                                      ldr r3, [r1]
00886370  18 c0 a0 e3                                      mov ip, #0x18
00886374  04 20 92 e5                                      ldr r2, [r2, #4]
00886378  01 40 a0 e1                                      mov r4, r1
0088637c  ba 10 d0 e1                                      ldrh r1, [r0, #0xa]
00886380  9c 23 23 e0                                      mla r3, ip, r3, r2
00886384  08 20 94 e5                                      ldr r2, [r4, #8]
00886388  04 c0 93 e5                                      ldr ip, [r3, #4]
0088638c  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00886390  71 10 bf e6                                      sxth r1, r1
00886394  0c c0 62 e0                                      rsb ip, r2, ip
00886398  01 11 a0 e1                                      lsl r1, r1, #2
0088639c  0c 00 50 e1                                      cmp r0, ip
008863a0  00 c0 a0 31                                      movlo ip, r0
008863a4  01 00 41 e2                                      sub r0, r1, #1
008863a8  02 20 8c e0                                      add r2, ip, r2
008863ac  00 00 61 e0                                      rsb r0, r1, r0
008863b0  08 50 93 e5                                      ldr r5, [r3, #8]
008863b4  0c 00 80 e0                                      add r0, r0, ip
008863b8  08 20 84 e5                                      str r2, [r4, #8]
008863bc  b8 1f ea eb                                      bl #0x30e2a4
008863c0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008863c4  80 01 a0 e1                                      lsl r0, r0, #3
008863c8  01 00 80 e2                                      add r0, r0, #1
008863cc  03 20 80 e0                                      add r2, r0, r3
008863d0  02 00 55 e1                                      cmp r5, r2
008863d4  05 00 63 30                                      rsblo r0, r3, r5
008863d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008863dc, declared_size=88, range_size=88, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM41EmulateSetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::EmulateSetDecodingBufferToSegmentPosition(vox::SegmentState*)
; decoder-mode: arm
008863dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008863e0  0c 60 91 e5                                      ldr r6, [r1, #0xc]
008863e4  70 81 90 e5                                      ldr r8, [r0, #0x170]
008863e8  01 40 a0 e1                                      mov r4, r1
008863ec  3c 70 91 e5                                      ldr r7, [r1, #0x3c]
008863f0  00 50 a0 e1                                      mov r5, r0
008863f4  08 10 a0 e1                                      mov r1, r8
008863f8  06 00 a0 e1                                      mov r0, r6
008863fc  12 22 ea eb                                      bl #0x30ec4c
00886400  98 00 00 e0                                      mul r0, r8, r0
00886404  04 10 a0 e1                                      mov r1, r4
00886408  0c 00 84 e5                                      str r0, [r4, #0xc]
0088640c  05 00 a0 e1                                      mov r0, r5
00886410  d3 ff ff eb                                      bl #0x886364
00886414  5e 30 87 e2                                      add r3, r7, #0x5e
00886418  03 01 85 e7                                      str r0, [r5, r3, lsl #2]
0088641c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00886420  07 51 85 e0                                      add r5, r5, r7, lsl #2
00886424  06 30 63 e0                                      rsb r3, r3, r6
00886428  84 31 85 e5                                      str r3, [r5, #0x184]
0088642c  0c 60 84 e5                                      str r6, [r4, #0xc]
00886430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00886434, declared_size=32, range_size=32, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM31GetBytePositionFromSampleOffsetEj
; demangled: vox::VoxNativeSubDecoderIMAADPCM::GetBytePositionFromSampleOffset(unsigned int)
; decoder-mode: arm
00886434  10 40 2d e9                                      push {r4, lr}
00886438  00 40 a0 e1                                      mov r4, r0
0088643c  01 00 a0 e1                                      mov r0, r1
00886440  70 11 94 e5                                      ldr r1, [r4, #0x170]
00886444  00 22 ea eb                                      bl #0x30ec4c
00886448  f0 31 d4 e1                                      ldrsh r3, [r4, #0x10]
0088644c  93 00 00 e0                                      mul r0, r3, r0
00886450  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00886454, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM17GetDecodingBufferEv
; demangled: vox::VoxNativeSubDecoderIMAADPCM::GetDecodingBuffer()
; decoder-mode: arm
00886454  90 31 90 e5                                      ldr r3, [r0, #0x190]
00886458  00 00 53 e3                                      cmp r3, #0
0088645c  01 20 a0 03                                      moveq r2, #1
00886460  90 21 80 05                                      streq r2, [r0, #0x190]
00886464  03 00 a0 01                                      moveq r0, r3
00886468  1e ff 2f 01                                      bxeq lr
0088646c  94 31 90 e5                                      ldr r3, [r0, #0x194]
00886470  00 00 53 e3                                      cmp r3, #0
00886474  01 30 a0 03                                      moveq r3, #1
00886478  94 31 80 05                                      streq r3, [r0, #0x194]
0088647c  03 00 a0 01                                      moveq r0, r3
00886480  1e ff 2f 01                                      bxeq lr
00886484  98 31 90 e5                                      ldr r3, [r0, #0x198]
00886488  00 00 53 e3                                      cmp r3, #0
0088648c  01 30 a0 03                                      moveq r3, #1
00886490  98 31 80 05                                      streq r3, [r0, #0x198]
00886494  00 00 e0 13                                      mvnne r0, #0
00886498  02 00 a0 03                                      moveq r0, #2
0088649c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008864a0, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM21ReleaseDecodingBufferEi
; demangled: vox::VoxNativeSubDecoderIMAADPCM::ReleaseDecodingBuffer(int)
; decoder-mode: arm
008864a0  00 00 51 e3                                      cmp r1, #0
008864a4  1e ff 2f b1                                      bxlt lr
008864a8  60 20 81 e2                                      add r2, r1, #0x60
008864ac  00 30 a0 e3                                      mov r3, #0
008864b0  64 c0 81 e2                                      add ip, r1, #0x64
008864b4  02 21 80 e0                                      add r2, r0, r2, lsl #2
008864b8  5e 10 81 e2                                      add r1, r1, #0x5e
008864bc  0c 31 80 e7                                      str r3, [r0, ip, lsl #2]
008864c0  01 31 80 e7                                      str r3, [r0, r1, lsl #2]
008864c4  04 30 82 e5                                      str r3, [r2, #4]
008864c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008864cc, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM5ResetEv
; demangled: vox::VoxNativeSubDecoderIMAADPCM::Reset()
; decoder-mode: arm
008864cc  00 20 a0 e3                                      mov r2, #0
008864d0  98 21 80 e5                                      str r2, [r0, #0x198]
008864d4  78 21 80 e5                                      str r2, [r0, #0x178]
008864d8  7c 21 80 e5                                      str r2, [r0, #0x17c]
008864dc  80 21 80 e5                                      str r2, [r0, #0x180]
008864e0  84 21 80 e5                                      str r2, [r0, #0x184]
008864e4  88 21 80 e5                                      str r2, [r0, #0x188]
008864e8  8c 21 80 e5                                      str r2, [r0, #0x18c]
008864ec  90 21 80 e5                                      str r2, [r0, #0x190]
008864f0  94 21 80 e5                                      str r2, [r0, #0x194]
008864f4  28 fb ff ea                                      b #0x88519c

; FUNCTION 0x008864f8, declared_size=92, range_size=92, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM8SetStateEPNS_29NativeSubDecoderIMAADPCMStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::SetState(vox::NativeSubDecoderIMAADPCMState*)
; decoder-mode: arm
008864f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008864fc  01 50 a0 e1                                      mov r5, r1
00886500  00 40 a0 e1                                      mov r4, r0
00886504  8c fa ff eb                                      bl #0x884f3c
00886508  44 31 95 e5                                      ldr r3, [r5, #0x144]
0088650c  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
00886510  90 31 84 e5                                      str r3, [r4, #0x190]
00886514  48 31 95 e5                                      ldr r3, [r5, #0x148]
00886518  03 00 52 e3                                      cmp r2, #3
0088651c  94 31 84 e5                                      str r3, [r4, #0x194]
00886520  4c 31 95 e5                                      ldr r3, [r5, #0x14c]
00886524  98 31 84 e5                                      str r3, [r4, #0x198]
00886528  01 30 a0 03                                      moveq r3, #1
0088652c  d8 30 c4 05                                      strbeq r3, [r4, #0xd8]
00886530  00 31 94 e5                                      ldr r3, [r4, #0x100]
00886534  03 00 53 e3                                      cmp r3, #3
00886538  01 30 a0 03                                      moveq r3, #1
0088653c  1c 31 c4 05                                      strbeq r3, [r4, #0x11c]
00886540  44 31 94 e5                                      ldr r3, [r4, #0x144]
00886544  03 00 53 e3                                      cmp r3, #3
00886548  01 30 a0 03                                      moveq r3, #1
0088654c  60 31 c4 05                                      strbeq r3, [r4, #0x160]
00886550  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00886554, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM8GetStateEPNS_29NativeSubDecoderIMAADPCMStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::GetState(vox::NativeSubDecoderIMAADPCMState*)
; decoder-mode: arm
00886554  70 40 2d e9                                      push {r4, r5, r6, lr}
00886558  00 50 a0 e1                                      mov r5, r0
0088655c  01 40 a0 e1                                      mov r4, r1
00886560  c1 fa ff eb                                      bl #0x88506c
00886564  90 31 95 e5                                      ldr r3, [r5, #0x190]
00886568  44 31 84 e5                                      str r3, [r4, #0x144]
0088656c  94 31 95 e5                                      ldr r3, [r5, #0x194]
00886570  48 31 84 e5                                      str r3, [r4, #0x148]
00886574  98 31 95 e5                                      ldr r3, [r5, #0x198]
00886578  4c 31 84 e5                                      str r3, [r4, #0x14c]
0088657c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00886580, declared_size=604, range_size=604, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM20EmulateDecodeSegmentEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeSegment(int, vox::SegmentState*)
; decoder-mode: arm
00886580  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00886584  f2 31 d0 e1                                      ldrsh r3, [r0, #0x12]
00886588  fa b0 d0 e1                                      ldrsh fp, [r0, #0xa]
0088658c  0c d0 4d e2                                      sub sp, sp, #0xc
00886590  c3 31 a0 e1                                      asr r3, r3, #3
00886594  00 70 a0 e1                                      mov r7, r0
00886598  01 00 a0 e1                                      mov r0, r1
0088659c  9b 03 01 e0                                      mul r1, fp, r3
008865a0  02 40 a0 e1                                      mov r4, r2
008865a4  3e 1f ea eb                                      bl #0x30e2a4
008865a8  00 00 50 e3                                      cmp r0, #0
008865ac  04 00 8d e5                                      str r0, [sp, #4]
008865b0  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
008865b4  00 00 a0 d3                                      movle r0, #0
008865b8  50 00 00 da                                      ble #0x886700
008865bc  08 61 87 e0                                      add r6, r7, r8, lsl #2
008865c0  61 6f 86 e2                                      add r6, r6, #0x184
008865c4  04 50 9d e5                                      ldr r5, [sp, #4]
008865c8  5e 80 88 e2                                      add r8, r8, #0x5e
008865cc  00 a0 a0 e3                                      mov sl, #0
008865d0  0c 90 a0 e3                                      mov sb, #0xc
008865d4  31 00 00 ea                                      b #0x8866a0
008865d8  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
008865dc  00 30 96 e5                                      ldr r3, [r6]
008865e0  00 00 53 e1                                      cmp r3, r0
008865e4  3a 00 00 0a                                      beq #0x8866d4
008865e8  00 00 50 e3                                      cmp r0, #0
008865ec  3f 00 00 0a                                      beq #0x8866f0
008865f0  14 10 94 e5                                      ldr r1, [r4, #0x14]
008865f4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008865f8  00 30 96 e5                                      ldr r3, [r6]
008865fc  01 10 81 e2                                      add r1, r1, #1
00886600  01 20 62 e0                                      rsb r2, r2, r1
00886604  02 00 55 e1                                      cmp r5, r2
00886608  05 20 a0 b1                                      movlt r2, r5
0088660c  02 20 a0 a1                                      movge r2, r2
00886610  00 00 63 e0                                      rsb r0, r3, r0
00886614  00 00 52 e1                                      cmp r2, r0
00886618  00 20 a0 a1                                      movge r2, r0
0088661c  03 30 82 e0                                      add r3, r2, r3
00886620  00 30 86 e5                                      str r3, [r6]
00886624  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00886628  14 30 94 e5                                      ldr r3, [r4, #0x14]
0088662c  05 50 62 e0                                      rsb r5, r2, r5
00886630  01 20 82 e0                                      add r2, r2, r1
00886634  03 00 52 e1                                      cmp r2, r3
00886638  0c 20 84 e5                                      str r2, [r4, #0xc]
0088663c  15 00 00 9a                                      bls #0x886698
00886640  18 20 94 e5                                      ldr r2, [r4, #0x18]
00886644  a2 30 b0 e1                                      lsrs r3, r2, #1
00886648  1c 30 94 05                                      ldreq r3, [r4, #0x1c]
0088664c  02 00 00 0a                                      beq #0x88665c
00886650  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00886654  03 00 52 e1                                      cmp r2, r3
00886658  45 00 00 0a                                      beq #0x886774
0088665c  01 30 43 e2                                      sub r3, r3, #1
00886660  00 00 53 e3                                      cmp r3, #0
00886664  1c 30 84 e5                                      str r3, [r4, #0x1c]
00886668  05 00 00 1a                                      bne #0x886684
0088666c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00886670  01 00 53 e3                                      cmp r3, #1
00886674  46 00 00 0a                                      beq #0x886794
00886678  04 30 94 e5                                      ldr r3, [r4, #4]
0088667c  01 00 53 e3                                      cmp r3, #1
00886680  52 00 00 0a                                      beq #0x8867d0
00886684  24 30 94 e5                                      ldr r3, [r4, #0x24]
00886688  03 00 53 e3                                      cmp r3, #3
0088668c  25 00 00 0a                                      beq #0x886728
00886690  04 00 53 e3                                      cmp r3, #4
00886694  31 00 00 0a                                      beq #0x886760
00886698  00 00 55 e3                                      cmp r5, #0
0088669c  2c 00 00 da                                      ble #0x886754
008866a0  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
008866a4  00 00 53 e3                                      cmp r3, #0
008866a8  ca ff ff 0a                                      beq #0x8865d8
008866ac  00 30 97 e5                                      ldr r3, [r7]
008866b0  07 00 a0 e1                                      mov r0, r7
008866b4  04 10 a0 e1                                      mov r1, r4
008866b8  0f e0 a0 e1                                      mov lr, pc
008866bc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
008866c0  40 a0 c4 e5                                      strb sl, [r4, #0x40]
008866c4  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
008866c8  00 30 96 e5                                      ldr r3, [r6]
008866cc  00 00 53 e1                                      cmp r3, r0
008866d0  c4 ff ff 1a                                      bne #0x8865e8
008866d4  07 00 a0 e1                                      mov r0, r7
008866d8  04 10 a0 e1                                      mov r1, r4
008866dc  20 ff ff eb                                      bl #0x886364
008866e0  00 00 50 e3                                      cmp r0, #0
008866e4  08 01 87 e7                                      str r0, [r7, r8, lsl #2]
008866e8  00 a0 86 e5                                      str sl, [r6]
008866ec  bf ff ff 1a                                      bne #0x8865f0
008866f0  01 30 a0 e3                                      mov r3, #1
008866f4  24 30 84 e5                                      str r3, [r4, #0x24]
008866f8  04 30 9d e5                                      ldr r3, [sp, #4]
008866fc  03 00 65 e0                                      rsb r0, r5, r3
00886700  04 30 94 e5                                      ldr r3, [r4, #4]
00886704  03 00 53 e3                                      cmp r3, #3
00886708  01 30 a0 03                                      moveq r3, #1
0088670c  24 30 84 05                                      streq r3, [r4, #0x24]
00886710  f2 31 d7 e1                                      ldrsh r3, [r7, #0x12]
00886714  c3 31 a0 e1                                      asr r3, r3, #3
00886718  9b 03 0b e0                                      mul fp, fp, r3
0088671c  90 0b 00 e0                                      mul r0, r0, fp
00886720  0c d0 8d e2                                      add sp, sp, #0xc
00886724  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00886728  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0088672c  00 00 53 e3                                      cmp r3, #0
00886730  d8 ff ff 0a                                      beq #0x886698
00886734  00 30 97 e5                                      ldr r3, [r7]
00886738  07 00 a0 e1                                      mov r0, r7
0088673c  00 10 e0 e3                                      mvn r1, #0
00886740  04 20 a0 e1                                      mov r2, r4
00886744  0f e0 a0 e1                                      mov lr, pc
00886748  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0088674c  00 00 55 e3                                      cmp r5, #0
00886750  d2 ff ff ca                                      bgt #0x8866a0
00886754  04 30 9d e5                                      ldr r3, [sp, #4]
00886758  03 00 65 e0                                      rsb r0, r5, r3
0088675c  e7 ff ff ea                                      b #0x886700
00886760  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00886764  14 30 94 e5                                      ldr r3, [r4, #0x14]
00886768  03 00 52 e1                                      cmp r2, r3
0088676c  c9 ff ff 9a                                      bls #0x886698
00886770  de ff ff ea                                      b #0x8866f0
00886774  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00886778  00 20 94 e5                                      ldr r2, [r4]
0088677c  00 10 91 e5                                      ldr r1, [r1]
00886780  99 02 02 e0                                      mul r2, sb, r2
00886784  02 20 91 e7                                      ldr r2, [r1, r2]
00886788  04 20 92 e5                                      ldr r2, [r2, #4]
0088678c  10 20 84 e5                                      str r2, [r4, #0x10]
00886790  b1 ff ff ea                                      b #0x88665c
00886794  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
00886798  00 30 94 e5                                      ldr r3, [r4]
0088679c  00 10 92 e5                                      ldr r1, [r2]
008867a0  99 03 03 e0                                      mul r3, sb, r3
008867a4  03 20 81 e0                                      add r2, r1, r3
008867a8  04 20 92 e5                                      ldr r2, [r2, #4]
008867ac  03 30 91 e7                                      ldr r3, [r1, r3]
008867b0  02 20 63 e0                                      rsb r2, r3, r2
008867b4  42 21 a0 e1                                      asr r2, r2, #2
008867b8  01 20 42 e2                                      sub r2, r2, #1
008867bc  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
008867c0  14 30 84 e5                                      str r3, [r4, #0x14]
008867c4  04 30 94 e5                                      ldr r3, [r4, #4]
008867c8  01 00 53 e3                                      cmp r3, #1
008867cc  ac ff ff 1a                                      bne #0x886684
008867d0  07 00 a0 e1                                      mov r0, r7
008867d4  d9 fb ff eb                                      bl #0x885740
008867d8  a9 ff ff ea                                      b #0x886684

; FUNCTION 0x008867dc, declared_size=580, range_size=580, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM37EmulateDecodeCurrentSegmentWithOffsetEi
; demangled: vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeCurrentSegmentWithOffset(int)
; decoder-mode: arm
008867dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008867e0  f2 61 d0 e1                                      ldrsh r6, [r0, #0x12]
008867e4  fa b0 d0 e1                                      ldrsh fp, [r0, #0xa]
008867e8  00 40 a0 e1                                      mov r4, r0
008867ec  01 00 a0 e1                                      mov r0, r1
008867f0  c6 11 a0 e1                                      asr r1, r6, #3
008867f4  0c d0 4d e2                                      sub sp, sp, #0xc
008867f8  9b 01 01 e0                                      mul r1, fp, r1
008867fc  a8 1e ea eb                                      bl #0x30e2a4
00886800  04 00 8d e5                                      str r0, [sp, #4]
00886804  68 51 94 e5                                      ldr r5, [r4, #0x168]
00886808  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
0088680c  00 00 55 e3                                      cmp r5, #0
00886810  00 30 a0 c3                                      movgt r3, #0
00886814  68 31 84 c5                                      strgt r3, [r4, #0x168]
00886818  04 30 9d c5                                      ldrgt r3, [sp, #4]
0088681c  00 50 a0 d1                                      movle r5, r0
00886820  03 50 65 c0                                      rsbgt r5, r5, r3
00886824  00 00 55 e3                                      cmp r5, #0
00886828  4e 00 00 da                                      ble #0x886968
0088682c  07 61 84 e0                                      add r6, r4, r7, lsl #2
00886830  61 6f 86 e2                                      add r6, r6, #0x184
00886834  12 8e 84 e2                                      add r8, r4, #0x120
00886838  5e 70 87 e2                                      add r7, r7, #0x5e
0088683c  00 a0 a0 e3                                      mov sl, #0
00886840  0c 90 a0 e3                                      mov sb, #0xc
00886844  30 00 00 ea                                      b #0x88690c
00886848  07 01 94 e7                                      ldr r0, [r4, r7, lsl #2]
0088684c  00 30 96 e5                                      ldr r3, [r6]
00886850  00 00 53 e1                                      cmp r3, r0
00886854  39 00 00 0a                                      beq #0x886940
00886858  00 00 50 e3                                      cmp r0, #0
0088685c  3e 00 00 0a                                      beq #0x88695c
00886860  34 11 94 e5                                      ldr r1, [r4, #0x134]
00886864  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00886868  00 30 96 e5                                      ldr r3, [r6]
0088686c  01 10 81 e2                                      add r1, r1, #1
00886870  01 20 62 e0                                      rsb r2, r2, r1
00886874  02 00 55 e1                                      cmp r5, r2
00886878  05 20 a0 b1                                      movlt r2, r5
0088687c  02 20 a0 a1                                      movge r2, r2
00886880  00 00 63 e0                                      rsb r0, r3, r0
00886884  00 00 52 e1                                      cmp r2, r0
00886888  00 20 a0 a1                                      movge r2, r0
0088688c  03 30 82 e0                                      add r3, r2, r3
00886890  00 30 86 e5                                      str r3, [r6]
00886894  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
00886898  34 31 94 e5                                      ldr r3, [r4, #0x134]
0088689c  05 50 62 e0                                      rsb r5, r2, r5
008868a0  01 20 82 e0                                      add r2, r2, r1
008868a4  03 00 52 e1                                      cmp r2, r3
008868a8  2c 21 84 e5                                      str r2, [r4, #0x12c]
008868ac  14 00 00 9a                                      bls #0x886904
008868b0  38 21 94 e5                                      ldr r2, [r4, #0x138]
008868b4  a2 30 b0 e1                                      lsrs r3, r2, #1
008868b8  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
008868bc  02 00 00 0a                                      beq #0x8868cc
008868c0  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
008868c4  03 00 52 e1                                      cmp r2, r3
008868c8  3f 00 00 0a                                      beq #0x8869cc
008868cc  01 30 43 e2                                      sub r3, r3, #1
008868d0  00 00 53 e3                                      cmp r3, #0
008868d4  3c 31 84 e5                                      str r3, [r4, #0x13c]
008868d8  04 00 00 1a                                      bne #0x8868f0
008868dc  40 31 94 e5                                      ldr r3, [r4, #0x140]
008868e0  01 00 53 e3                                      cmp r3, #1
008868e4  40 00 00 0a                                      beq #0x8869ec
008868e8  04 00 a0 e1                                      mov r0, r4
008868ec  93 fb ff eb                                      bl #0x885740
008868f0  44 31 94 e5                                      ldr r3, [r4, #0x144]
008868f4  03 00 53 e3                                      cmp r3, #3
008868f8  21 00 00 0a                                      beq #0x886984
008868fc  04 00 53 e3                                      cmp r3, #4
00886900  2c 00 00 0a                                      beq #0x8869b8
00886904  00 00 55 e3                                      cmp r5, #0
00886908  28 00 00 da                                      ble #0x8869b0
0088690c  60 31 d4 e5                                      ldrb r3, [r4, #0x160]
00886910  00 00 53 e3                                      cmp r3, #0
00886914  cb ff ff 0a                                      beq #0x886848
00886918  00 30 94 e5                                      ldr r3, [r4]
0088691c  04 00 a0 e1                                      mov r0, r4
00886920  08 10 a0 e1                                      mov r1, r8
00886924  0f e0 a0 e1                                      mov lr, pc
00886928  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0088692c  60 a1 c4 e5                                      strb sl, [r4, #0x160]
00886930  07 01 94 e7                                      ldr r0, [r4, r7, lsl #2]
00886934  00 30 96 e5                                      ldr r3, [r6]
00886938  00 00 53 e1                                      cmp r3, r0
0088693c  c5 ff ff 1a                                      bne #0x886858
00886940  04 00 a0 e1                                      mov r0, r4
00886944  08 10 a0 e1                                      mov r1, r8
00886948  85 fe ff eb                                      bl #0x886364
0088694c  00 00 50 e3                                      cmp r0, #0
00886950  07 01 84 e7                                      str r0, [r4, r7, lsl #2]
00886954  00 a0 86 e5                                      str sl, [r6]
00886958  c0 ff ff 1a                                      bne #0x886860
0088695c  f2 61 d4 e1                                      ldrsh r6, [r4, #0x12]
00886960  01 30 a0 e3                                      mov r3, #1
00886964  44 31 84 e5                                      str r3, [r4, #0x144]
00886968  c6 61 a0 e1                                      asr r6, r6, #3
0088696c  04 30 9d e5                                      ldr r3, [sp, #4]
00886970  9b 06 0b e0                                      mul fp, fp, r6
00886974  03 00 65 e0                                      rsb r0, r5, r3
00886978  90 0b 00 e0                                      mul r0, r0, fp
0088697c  0c d0 8d e2                                      add sp, sp, #0xc
00886980  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00886984  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00886988  00 00 53 e3                                      cmp r3, #0
0088698c  dc ff ff 0a                                      beq #0x886904
00886990  00 30 94 e5                                      ldr r3, [r4]
00886994  04 00 a0 e1                                      mov r0, r4
00886998  00 10 e0 e3                                      mvn r1, #0
0088699c  08 20 a0 e1                                      mov r2, r8
008869a0  0f e0 a0 e1                                      mov lr, pc
008869a4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008869a8  00 00 55 e3                                      cmp r5, #0
008869ac  d6 ff ff ca                                      bgt #0x88690c
008869b0  f2 61 d4 e1                                      ldrsh r6, [r4, #0x12]
008869b4  eb ff ff ea                                      b #0x886968
008869b8  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
008869bc  34 31 94 e5                                      ldr r3, [r4, #0x134]
008869c0  03 00 52 e1                                      cmp r2, r3
008869c4  ce ff ff 9a                                      bls #0x886904
008869c8  e3 ff ff ea                                      b #0x88695c
008869cc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
008869d0  20 21 94 e5                                      ldr r2, [r4, #0x120]
008869d4  00 10 91 e5                                      ldr r1, [r1]
008869d8  99 02 02 e0                                      mul r2, sb, r2
008869dc  02 20 91 e7                                      ldr r2, [r1, r2]
008869e0  04 20 92 e5                                      ldr r2, [r2, #4]
008869e4  30 21 84 e5                                      str r2, [r4, #0x130]
008869e8  b7 ff ff ea                                      b #0x8868cc
008869ec  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
008869f0  20 31 94 e5                                      ldr r3, [r4, #0x120]
008869f4  00 20 92 e5                                      ldr r2, [r2]
008869f8  99 03 03 e0                                      mul r3, sb, r3
008869fc  03 10 82 e0                                      add r1, r2, r3
00886a00  03 30 92 e7                                      ldr r3, [r2, r3]
00886a04  04 20 91 e5                                      ldr r2, [r1, #4]
00886a08  02 20 63 e0                                      rsb r2, r3, r2
00886a0c  42 21 a0 e1                                      asr r2, r2, #2
00886a10  01 20 42 e2                                      sub r2, r2, #1
00886a14  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00886a18  34 31 84 e5                                      str r3, [r4, #0x134]
00886a1c  b1 ff ff ea                                      b #0x8868e8

; FUNCTION 0x00886a20, declared_size=224, range_size=224, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMD1Ev
; demangled: vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM()
; decoder-mode: arm
00886a20  70 40 2d e9                                      push {r4, r5, r6, lr}
00886a24  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00886a28  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00886a2c  74 11 90 e5                                      ldr r1, [r0, #0x174]
00886a30  03 30 8f e0                                      add r3, pc, r3
00886a34  02 20 93 e7                                      ldr r2, [r3, r2]
00886a38  00 00 51 e3                                      cmp r1, #0
00886a3c  00 50 a0 e1                                      mov r5, r0
00886a40  08 20 82 e2                                      add r2, r2, #8
00886a44  00 20 80 e5                                      str r2, [r0]
00886a48  1b 00 00 0a                                      beq #0x886abc
00886a4c  00 00 91 e5                                      ldr r0, [r1]
00886a50  00 00 50 e3                                      cmp r0, #0
00886a54  04 00 00 0a                                      beq #0x886a6c
00886a58  79 26 ea eb                                      bl #0x310444
00886a5c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886a60  00 20 a0 e3                                      mov r2, #0
00886a64  00 20 83 e5                                      str r2, [r3]
00886a68  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886a6c  04 00 91 e5                                      ldr r0, [r1, #4]
00886a70  00 00 50 e3                                      cmp r0, #0
00886a74  04 00 00 0a                                      beq #0x886a8c
00886a78  71 26 ea eb                                      bl #0x310444
00886a7c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886a80  00 20 a0 e3                                      mov r2, #0
00886a84  04 20 83 e5                                      str r2, [r3, #4]
00886a88  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886a8c  08 00 91 e5                                      ldr r0, [r1, #8]
00886a90  00 00 50 e3                                      cmp r0, #0
00886a94  04 00 00 0a                                      beq #0x886aac
00886a98  69 26 ea eb                                      bl #0x310444
00886a9c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886aa0  00 20 a0 e3                                      mov r2, #0
00886aa4  08 20 83 e5                                      str r2, [r3, #8]
00886aa8  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886aac  01 00 a0 e1                                      mov r0, r1
00886ab0  63 26 ea eb                                      bl #0x310444
00886ab4  00 30 a0 e3                                      mov r3, #0
00886ab8  74 31 85 e5                                      str r3, [r5, #0x174]
00886abc  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
00886ac0  00 00 50 e3                                      cmp r0, #0
00886ac4  02 00 00 0a                                      beq #0x886ad4
00886ac8  5d 26 ea eb                                      bl #0x310444
00886acc  00 30 a0 e3                                      mov r3, #0
00886ad0  9c 31 85 e5                                      str r3, [r5, #0x19c]
00886ad4  1a 6e 85 e2                                      add r6, r5, #0x1a0
00886ad8  07 4d 85 e2                                      add r4, r5, #0x1c0
00886adc  04 40 44 e2                                      sub r4, r4, #4
00886ae0  04 00 a0 e1                                      mov r0, r4
00886ae4  5e 3d 00 eb                                      bl #0x896064
00886ae8  06 00 54 e1                                      cmp r4, r6
00886aec  fa ff ff 1a                                      bne #0x886adc
00886af0  05 00 a0 e1                                      mov r0, r5
00886af4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00886af8  60 e0 10 00 b4 10 00 00                          .byte 0x60, 0xe0, 0x10, 0x00, 0xb4, 0x10, 0x00, 0x00

; FUNCTION 0x00886b00, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMD0Ev
; demangled: vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM()
; decoder-mode: arm
00886b00  10 40 2d e9                                      push {r4, lr}
00886b04  00 40 a0 e1                                      mov r4, r0
00886b08  c4 ff ff eb                                      bl #0x886a20
00886b0c  04 00 a0 e1                                      mov r0, r4
00886b10  e6 1d ea eb                                      bl #0x30e2b0
00886b14  04 00 a0 e1                                      mov r0, r4
00886b18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00886b1c, declared_size=224, range_size=224, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMD2Ev
; demangled: vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM()
; decoder-mode: arm
00886b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00886b20  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00886b24  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00886b28  74 11 90 e5                                      ldr r1, [r0, #0x174]
00886b2c  03 30 8f e0                                      add r3, pc, r3
00886b30  02 20 93 e7                                      ldr r2, [r3, r2]
00886b34  00 00 51 e3                                      cmp r1, #0
00886b38  00 50 a0 e1                                      mov r5, r0
00886b3c  08 20 82 e2                                      add r2, r2, #8
00886b40  00 20 80 e5                                      str r2, [r0]
00886b44  1b 00 00 0a                                      beq #0x886bb8
00886b48  00 00 91 e5                                      ldr r0, [r1]
00886b4c  00 00 50 e3                                      cmp r0, #0
00886b50  04 00 00 0a                                      beq #0x886b68
00886b54  3a 26 ea eb                                      bl #0x310444
00886b58  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886b5c  00 20 a0 e3                                      mov r2, #0
00886b60  00 20 83 e5                                      str r2, [r3]
00886b64  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886b68  04 00 91 e5                                      ldr r0, [r1, #4]
00886b6c  00 00 50 e3                                      cmp r0, #0
00886b70  04 00 00 0a                                      beq #0x886b88
00886b74  32 26 ea eb                                      bl #0x310444
00886b78  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886b7c  00 20 a0 e3                                      mov r2, #0
00886b80  04 20 83 e5                                      str r2, [r3, #4]
00886b84  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886b88  08 00 91 e5                                      ldr r0, [r1, #8]
00886b8c  00 00 50 e3                                      cmp r0, #0
00886b90  04 00 00 0a                                      beq #0x886ba8
00886b94  2a 26 ea eb                                      bl #0x310444
00886b98  74 31 95 e5                                      ldr r3, [r5, #0x174]
00886b9c  00 20 a0 e3                                      mov r2, #0
00886ba0  08 20 83 e5                                      str r2, [r3, #8]
00886ba4  74 11 95 e5                                      ldr r1, [r5, #0x174]
00886ba8  01 00 a0 e1                                      mov r0, r1
00886bac  24 26 ea eb                                      bl #0x310444
00886bb0  00 30 a0 e3                                      mov r3, #0
00886bb4  74 31 85 e5                                      str r3, [r5, #0x174]
00886bb8  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
00886bbc  00 00 50 e3                                      cmp r0, #0
00886bc0  02 00 00 0a                                      beq #0x886bd0
00886bc4  1e 26 ea eb                                      bl #0x310444
00886bc8  00 30 a0 e3                                      mov r3, #0
00886bcc  9c 31 85 e5                                      str r3, [r5, #0x19c]
00886bd0  1a 6e 85 e2                                      add r6, r5, #0x1a0
00886bd4  07 4d 85 e2                                      add r4, r5, #0x1c0
00886bd8  04 40 44 e2                                      sub r4, r4, #4
00886bdc  04 00 a0 e1                                      mov r0, r4
00886be0  1f 3d 00 eb                                      bl #0x896064
00886be4  06 00 54 e1                                      cmp r4, r6
00886be8  fa ff ff 1a                                      bne #0x886bd8
00886bec  05 00 a0 e1                                      mov r0, r5
00886bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00886bf4  64 df 10 00 b4 10 00 00                          .byte 0x64, 0xdf, 0x10, 0x00, 0xb4, 0x10, 0x00, 0x00

; FUNCTION 0x00886bfc, declared_size=448, range_size=448, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00886bfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00886c00  18 d0 4d e2                                      sub sp, sp, #0x18
00886c04  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00886c08  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
00886c0c  00 40 a0 e1                                      mov r4, r0
00886c10  00 c0 8d e5                                      str ip, [sp]
00886c14  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00886c18  02 60 a0 e1                                      mov r6, r2
00886c1c  05 50 8f e0                                      add r5, pc, r5
00886c20  04 c0 8d e5                                      str ip, [sp, #4]
00886c24  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00886c28  00 70 a0 e3                                      mov r7, #0
00886c2c  1a 8e 84 e2                                      add r8, r4, #0x1a0
00886c30  08 c0 8d e5                                      str ip, [sp, #8]
00886c34  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00886c38  0c c0 8d e5                                      str ip, [sp, #0xc]
00886c3c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00886c40  10 c0 8d e5                                      str ip, [sp, #0x10]
00886c44  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00886c48  14 c0 8d e5                                      str ip, [sp, #0x14]
00886c4c  af fc ff eb                                      bl #0x885f10
00886c50  60 31 9f e5                                      ldr r3, [pc, #0x160]
00886c54  74 71 84 e5                                      str r7, [r4, #0x174]
00886c58  9c 71 84 e5                                      str r7, [r4, #0x19c]
00886c5c  03 30 95 e7                                      ldr r3, [r5, r3]
00886c60  08 30 83 e2                                      add r3, r3, #8
00886c64  00 30 84 e5                                      str r3, [r4]
00886c68  07 00 88 e0                                      add r0, r8, r7
00886c6c  04 70 87 e2                                      add r7, r7, #4
00886c70  f5 3c 00 eb                                      bl #0x89604c
00886c74  20 00 57 e3                                      cmp r7, #0x20
00886c78  fa ff ff 1a                                      bne #0x886c68
00886c7c  20 30 96 e5                                      ldr r3, [r6, #0x20]
00886c80  0c 00 a0 e3                                      mov r0, #0xc
00886c84  08 30 84 e5                                      str r3, [r4, #8]
00886c88  24 30 96 e5                                      ldr r3, [r6, #0x24]
00886c8c  0c 30 84 e5                                      str r3, [r4, #0xc]
00886c90  28 60 96 e5                                      ldr r6, [r6, #0x28]
00886c94  10 60 84 e5                                      str r6, [r4, #0x10]
00886c98  16 26 ea eb                                      bl #0x3104f8
00886c9c  76 60 bf e6                                      sxth r6, r6
00886ca0  74 01 84 e5                                      str r0, [r4, #0x174]
00886ca4  06 00 a0 e1                                      mov r0, r6
00886ca8  12 26 ea eb                                      bl #0x3104f8
00886cac  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886cb0  9c 01 84 e5                                      str r0, [r4, #0x19c]
00886cb4  00 00 57 e3                                      cmp r7, #0
00886cb8  34 00 00 0a                                      beq #0x886d90
00886cbc  00 00 50 e3                                      cmp r0, #0
00886cc0  32 00 00 0a                                      beq #0x886d90
00886cc4  06 51 a0 e1                                      lsl r5, r6, #2
00886cc8  05 00 a0 e1                                      mov r0, r5
00886ccc  09 26 ea eb                                      bl #0x3104f8
00886cd0  00 00 87 e5                                      str r0, [r7]
00886cd4  05 00 a0 e1                                      mov r0, r5
00886cd8  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886cdc  05 26 ea eb                                      bl #0x3104f8
00886ce0  04 00 87 e5                                      str r0, [r7, #4]
00886ce4  05 00 a0 e1                                      mov r0, r5
00886ce8  74 51 94 e5                                      ldr r5, [r4, #0x174]
00886cec  01 26 ea eb                                      bl #0x3104f8
00886cf0  08 00 85 e5                                      str r0, [r5, #8]
00886cf4  74 31 94 e5                                      ldr r3, [r4, #0x174]
00886cf8  00 20 93 e5                                      ldr r2, [r3]
00886cfc  00 00 52 e3                                      cmp r2, #0
00886d00  22 00 00 0a                                      beq #0x886d90
00886d04  04 20 93 e5                                      ldr r2, [r3, #4]
00886d08  00 00 52 e3                                      cmp r2, #0
00886d0c  1f 00 00 0a                                      beq #0x886d90
00886d10  08 30 93 e5                                      ldr r3, [r3, #8]
00886d14  00 00 53 e3                                      cmp r3, #0
00886d18  1c 00 00 0a                                      beq #0x886d90
00886d1c  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00886d20  00 50 a0 e3                                      mov r5, #0
00886d24  78 51 84 e5                                      str r5, [r4, #0x178]
00886d28  05 00 53 e1                                      cmp r3, r5
00886d2c  7c 51 84 e5                                      str r5, [r4, #0x17c]
00886d30  80 51 84 e5                                      str r5, [r4, #0x180]
00886d34  84 51 84 e5                                      str r5, [r4, #0x184]
00886d38  88 51 84 e5                                      str r5, [r4, #0x188]
00886d3c  8c 51 84 e5                                      str r5, [r4, #0x18c]
00886d40  90 51 84 e5                                      str r5, [r4, #0x190]
00886d44  94 51 84 e5                                      str r5, [r4, #0x194]
00886d48  98 51 84 e5                                      str r5, [r4, #0x198]
00886d4c  10 00 00 0a                                      beq #0x886d94
00886d50  73 30 bf e6                                      sxth r3, r3
00886d54  03 10 a0 e1                                      mov r1, r3
00886d58  03 31 46 e0                                      sub r3, r6, r3, lsl #2
00886d5c  83 00 a0 e1                                      lsl r0, r3, #1
00886d60  4f 1d ea eb                                      bl #0x30e2a4
00886d64  fa 30 d4 e1                                      ldrsh r3, [r4, #0xa]
00886d68  01 00 80 e2                                      add r0, r0, #1
00886d6c  70 01 84 e5                                      str r0, [r4, #0x170]
00886d70  08 00 53 e3                                      cmp r3, #8
00886d74  0b 00 00 da                                      ble #0x886da8
00886d78  b2 51 c4 e1                                      strh r5, [r4, #0x12]
00886d7c  b8 50 c4 e1                                      strh r5, [r4, #8]
00886d80  ba 50 c4 e1                                      strh r5, [r4, #0xa]
00886d84  0c 50 84 e5                                      str r5, [r4, #0xc]
00886d88  b0 51 c4 e1                                      strh r5, [r4, #0x10]
00886d8c  05 00 00 ea                                      b #0x886da8
00886d90  00 30 a0 e3                                      mov r3, #0
00886d94  b2 31 c4 e1                                      strh r3, [r4, #0x12]
00886d98  b8 30 c4 e1                                      strh r3, [r4, #8]
00886d9c  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00886da0  0c 30 84 e5                                      str r3, [r4, #0xc]
00886da4  b0 31 c4 e1                                      strh r3, [r4, #0x10]
00886da8  04 00 a0 e1                                      mov r0, r4
00886dac  18 d0 8d e2                                      add sp, sp, #0x18
00886db0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00886db4  74 de 10 00 b4 10 00 00                          .byte 0x74, 0xde, 0x10, 0x00, 0xb4, 0x10, 0x00, 0x00

; FUNCTION 0x00886dbc, declared_size=448, range_size=448, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCMC2EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00886dbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00886dc0  18 d0 4d e2                                      sub sp, sp, #0x18
00886dc4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00886dc8  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
00886dcc  00 40 a0 e1                                      mov r4, r0
00886dd0  00 c0 8d e5                                      str ip, [sp]
00886dd4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00886dd8  02 60 a0 e1                                      mov r6, r2
00886ddc  05 50 8f e0                                      add r5, pc, r5
00886de0  04 c0 8d e5                                      str ip, [sp, #4]
00886de4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00886de8  00 70 a0 e3                                      mov r7, #0
00886dec  1a 8e 84 e2                                      add r8, r4, #0x1a0
00886df0  08 c0 8d e5                                      str ip, [sp, #8]
00886df4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00886df8  0c c0 8d e5                                      str ip, [sp, #0xc]
00886dfc  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00886e00  10 c0 8d e5                                      str ip, [sp, #0x10]
00886e04  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00886e08  14 c0 8d e5                                      str ip, [sp, #0x14]
00886e0c  3f fc ff eb                                      bl #0x885f10
00886e10  60 31 9f e5                                      ldr r3, [pc, #0x160]
00886e14  74 71 84 e5                                      str r7, [r4, #0x174]
00886e18  9c 71 84 e5                                      str r7, [r4, #0x19c]
00886e1c  03 30 95 e7                                      ldr r3, [r5, r3]
00886e20  08 30 83 e2                                      add r3, r3, #8
00886e24  00 30 84 e5                                      str r3, [r4]
00886e28  07 00 88 e0                                      add r0, r8, r7
00886e2c  04 70 87 e2                                      add r7, r7, #4
00886e30  85 3c 00 eb                                      bl #0x89604c
00886e34  20 00 57 e3                                      cmp r7, #0x20
00886e38  fa ff ff 1a                                      bne #0x886e28
00886e3c  20 30 96 e5                                      ldr r3, [r6, #0x20]
00886e40  0c 00 a0 e3                                      mov r0, #0xc
00886e44  08 30 84 e5                                      str r3, [r4, #8]
00886e48  24 30 96 e5                                      ldr r3, [r6, #0x24]
00886e4c  0c 30 84 e5                                      str r3, [r4, #0xc]
00886e50  28 60 96 e5                                      ldr r6, [r6, #0x28]
00886e54  10 60 84 e5                                      str r6, [r4, #0x10]
00886e58  a6 25 ea eb                                      bl #0x3104f8
00886e5c  76 60 bf e6                                      sxth r6, r6
00886e60  74 01 84 e5                                      str r0, [r4, #0x174]
00886e64  06 00 a0 e1                                      mov r0, r6
00886e68  a2 25 ea eb                                      bl #0x3104f8
00886e6c  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886e70  9c 01 84 e5                                      str r0, [r4, #0x19c]
00886e74  00 00 57 e3                                      cmp r7, #0
00886e78  34 00 00 0a                                      beq #0x886f50
00886e7c  00 00 50 e3                                      cmp r0, #0
00886e80  32 00 00 0a                                      beq #0x886f50
00886e84  06 51 a0 e1                                      lsl r5, r6, #2
00886e88  05 00 a0 e1                                      mov r0, r5
00886e8c  99 25 ea eb                                      bl #0x3104f8
00886e90  00 00 87 e5                                      str r0, [r7]
00886e94  05 00 a0 e1                                      mov r0, r5
00886e98  74 71 94 e5                                      ldr r7, [r4, #0x174]
00886e9c  95 25 ea eb                                      bl #0x3104f8
00886ea0  04 00 87 e5                                      str r0, [r7, #4]
00886ea4  05 00 a0 e1                                      mov r0, r5
00886ea8  74 51 94 e5                                      ldr r5, [r4, #0x174]
00886eac  91 25 ea eb                                      bl #0x3104f8
00886eb0  08 00 85 e5                                      str r0, [r5, #8]
00886eb4  74 31 94 e5                                      ldr r3, [r4, #0x174]
00886eb8  00 20 93 e5                                      ldr r2, [r3]
00886ebc  00 00 52 e3                                      cmp r2, #0
00886ec0  22 00 00 0a                                      beq #0x886f50
00886ec4  04 20 93 e5                                      ldr r2, [r3, #4]
00886ec8  00 00 52 e3                                      cmp r2, #0
00886ecc  1f 00 00 0a                                      beq #0x886f50
00886ed0  08 30 93 e5                                      ldr r3, [r3, #8]
00886ed4  00 00 53 e3                                      cmp r3, #0
00886ed8  1c 00 00 0a                                      beq #0x886f50
00886edc  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00886ee0  00 50 a0 e3                                      mov r5, #0
00886ee4  78 51 84 e5                                      str r5, [r4, #0x178]
00886ee8  05 00 53 e1                                      cmp r3, r5
00886eec  7c 51 84 e5                                      str r5, [r4, #0x17c]
00886ef0  80 51 84 e5                                      str r5, [r4, #0x180]
00886ef4  84 51 84 e5                                      str r5, [r4, #0x184]
00886ef8  88 51 84 e5                                      str r5, [r4, #0x188]
00886efc  8c 51 84 e5                                      str r5, [r4, #0x18c]
00886f00  90 51 84 e5                                      str r5, [r4, #0x190]
00886f04  94 51 84 e5                                      str r5, [r4, #0x194]
00886f08  98 51 84 e5                                      str r5, [r4, #0x198]
00886f0c  10 00 00 0a                                      beq #0x886f54
00886f10  73 30 bf e6                                      sxth r3, r3
00886f14  03 10 a0 e1                                      mov r1, r3
00886f18  03 31 46 e0                                      sub r3, r6, r3, lsl #2
00886f1c  83 00 a0 e1                                      lsl r0, r3, #1
00886f20  df 1c ea eb                                      bl #0x30e2a4
00886f24  fa 30 d4 e1                                      ldrsh r3, [r4, #0xa]
00886f28  01 00 80 e2                                      add r0, r0, #1
00886f2c  70 01 84 e5                                      str r0, [r4, #0x170]
00886f30  08 00 53 e3                                      cmp r3, #8
00886f34  0b 00 00 da                                      ble #0x886f68
00886f38  b2 51 c4 e1                                      strh r5, [r4, #0x12]
00886f3c  b8 50 c4 e1                                      strh r5, [r4, #8]
00886f40  ba 50 c4 e1                                      strh r5, [r4, #0xa]
00886f44  0c 50 84 e5                                      str r5, [r4, #0xc]
00886f48  b0 51 c4 e1                                      strh r5, [r4, #0x10]
00886f4c  05 00 00 ea                                      b #0x886f68
00886f50  00 30 a0 e3                                      mov r3, #0
00886f54  b2 31 c4 e1                                      strh r3, [r4, #0x12]
00886f58  b8 30 c4 e1                                      strh r3, [r4, #8]
00886f5c  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00886f60  0c 30 84 e5                                      str r3, [r4, #0xc]
00886f64  b0 31 c4 e1                                      strh r3, [r4, #0x10]
00886f68  04 00 a0 e1                                      mov r0, r4
00886f6c  18 d0 8d e2                                      add sp, sp, #0x18
00886f70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00886f74  b4 dc 10 00 b4 10 00 00                          .byte 0xb4, 0xdc, 0x10, 0x00, 0xb4, 0x10, 0x00, 0x00

; FUNCTION 0x00887068, declared_size=1020, range_size=1020, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM11DecodeBlockEPvPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(void*, vox::SegmentState*)
; decoder-mode: arm
00887068  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088706c  64 d0 4d e2                                      sub sp, sp, #0x64
00887070  2c 00 8d e5                                      str r0, [sp, #0x2c]
00887074  38 20 8d e5                                      str r2, [sp, #0x38]
00887078  18 20 90 e5                                      ldr r2, [r0, #0x18]
0088707c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00887080  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00887084  04 c0 92 e5                                      ldr ip, [r2, #4]
00887088  00 30 90 e5                                      ldr r3, [r0]
0088708c  18 20 a0 e3                                      mov r2, #0x18
00887090  08 50 90 e5                                      ldr r5, [r0, #8]
00887094  92 03 02 e0                                      mul r2, r2, r3
00887098  04 30 98 e5                                      ldr r3, [r8, #4]
0088709c  02 40 9c e7                                      ldr r4, [ip, r2]
008870a0  02 20 8c e0                                      add r2, ip, r2
008870a4  08 c0 92 e5                                      ldr ip, [r2, #8]
008870a8  14 e0 98 e5                                      ldr lr, [r8, #0x14]
008870ac  03 00 a0 e1                                      mov r0, r3
008870b0  04 40 85 e0                                      add r4, r5, r4
008870b4  00 30 93 e5                                      ldr r3, [r3]
008870b8  3c c0 8d e5                                      str ip, [sp, #0x3c]
008870bc  0e 40 84 e0                                      add r4, r4, lr
008870c0  01 70 a0 e1                                      mov r7, r1
008870c4  ba 60 d8 e1                                      ldrh r6, [r8, #0xa]
008870c8  04 50 92 e5                                      ldr r5, [r2, #4]
008870cc  0f e0 a0 e1                                      mov lr, pc
008870d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008870d4  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
008870d8  00 00 54 e1                                      cmp r4, r0
008870dc  01 10 8f e0                                      add r1, pc, r1
008870e0  28 10 8d e5                                      str r1, [sp, #0x28]
008870e4  06 00 00 0a                                      beq #0x887104
008870e8  04 30 98 e5                                      ldr r3, [r8, #4]
008870ec  04 10 a0 e1                                      mov r1, r4
008870f0  00 20 a0 e3                                      mov r2, #0
008870f4  03 00 a0 e1                                      mov r0, r3
008870f8  00 30 93 e5                                      ldr r3, [r3]
008870fc  0f e0 a0 e1                                      mov lr, pc
00887100  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887104  38 20 9d e5                                      ldr r2, [sp, #0x38]
00887108  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
0088710c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00887110  08 10 92 e5                                      ldr r1, [r2, #8]
00887114  f0 21 d8 e1                                      ldrsh r2, [r8, #0x10]
00887118  9c 41 93 e5                                      ldr r4, [r3, #0x19c]
0088711c  04 30 93 e5                                      ldr r3, [r3, #4]
00887120  05 50 61 e0                                      rsb r5, r1, r5
00887124  05 00 52 e1                                      cmp r2, r5
00887128  05 20 a0 21                                      movhs r2, r5
0088712c  03 00 a0 e1                                      mov r0, r3
00887130  04 10 a0 e1                                      mov r1, r4
00887134  00 30 93 e5                                      ldr r3, [r3]
00887138  0f e0 a0 e1                                      mov lr, pc
0088713c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00887140  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00887144  76 60 bf e6                                      sxth r6, r6
00887148  08 30 9c e5                                      ldr r3, [ip, #8]
0088714c  20 60 8d e5                                      str r6, [sp, #0x20]
00887150  00 30 83 e0                                      add r3, r3, r0
00887154  08 30 8c e5                                      str r3, [ip, #8]
00887158  b0 10 d4 e1                                      ldrh r1, [r4]
0088715c  1a 3e a0 e3                                      mov r3, #0x1a0
00887160  b3 10 88 e1                                      strh r1, [r8, r3]
00887164  20 20 9d e5                                      ldr r2, [sp, #0x20]
00887168  b2 c0 d4 e1                                      ldrh ip, [r4, #2]
0088716c  a2 31 00 e3                                      movw r3, #0x1a2
00887170  01 00 52 e3                                      cmp r2, #1
00887174  b3 c0 88 e1                                      strh ip, [r8, r3]
00887178  ae 00 00 da                                      ble #0x887438
0088717c  02 61 a0 e1                                      lsl r6, r2, #2
00887180  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00887184  04 50 44 e2                                      sub r5, r4, #4
00887188  06 50 85 e0                                      add r5, r5, r6
0088718c  04 30 a0 e1                                      mov r3, r4
00887190  69 cf a0 e3                                      mov ip, #0x1a4
00887194  a6 11 00 e3                                      movw r1, #0x1a6
00887198  b4 80 d3 e1                                      ldrh r8, [r3, #4]
0088719c  bc 80 82 e1                                      strh r8, [r2, ip]
008871a0  b6 80 d3 e1                                      ldrh r8, [r3, #6]
008871a4  04 30 83 e2                                      add r3, r3, #4
008871a8  05 00 53 e1                                      cmp r3, r5
008871ac  b1 80 82 e1                                      strh r8, [r2, r1]
008871b0  04 20 82 e2                                      add r2, r2, #4
008871b4  f7 ff ff 1a                                      bne #0x887198
008871b8  60 10 8d e2                                      add r1, sp, #0x60
008871bc  20 70 21 e5                                      str r7, [r1, #-0x20]!
008871c0  08 30 41 e2                                      sub r3, r1, #8
008871c4  06 60 83 e0                                      add r6, r3, r6
008871c8  07 20 a0 e1                                      mov r2, r7
008871cc  01 30 a0 e1                                      mov r3, r1
008871d0  00 00 00 ea                                      b #0x8871d8
008871d4  04 30 83 e2                                      add r3, r3, #4
008871d8  02 20 82 e2                                      add r2, r2, #2
008871dc  06 00 53 e1                                      cmp r3, r6
008871e0  04 20 83 e5                                      str r2, [r3, #4]
008871e4  fa ff ff 1a                                      bne #0x8871d4
008871e8  20 20 9d e5                                      ldr r2, [sp, #0x20]
008871ec  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
008871f0  00 30 a0 e3                                      mov r3, #0
008871f4  82 60 a0 e1                                      lsl r6, r2, #1
008871f8  02 c1 a0 e1                                      lsl ip, r2, #2
008871fc  03 50 87 e0                                      add r5, r7, r3
00887200  1a 5e 85 e2                                      add r5, r5, #0x1a0
00887204  03 20 91 e7                                      ldr r2, [r1, r3]
00887208  b0 50 d5 e1                                      ldrh r5, [r5]
0088720c  b6 50 82 e0                                      strh r5, [r2], r6
00887210  03 20 81 e7                                      str r2, [r1, r3]
00887214  04 30 83 e2                                      add r3, r3, #4
00887218  0c 00 53 e1                                      cmp r3, ip
0088721c  f6 ff ff 1a                                      bne #0x8871fc
00887220  00 00 6c e0                                      rsb r0, ip, r0
00887224  00 00 50 e3                                      cmp r0, #0
00887228  01 30 a0 d3                                      movle r3, #1
0088722c  30 00 8d e5                                      str r0, [sp, #0x30]
00887230  24 30 8d d5                                      strle r3, [sp, #0x24]
00887234  74 00 00 da                                      ble #0x88740c
00887238  0c c0 84 e0                                      add ip, r4, ip
0088723c  10 c0 8d e5                                      str ip, [sp, #0x10]
00887240  20 80 9d e5                                      ldr r8, [sp, #0x20]
00887244  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00887248  02 31 a0 e3                                      mov r3, #0x80000000
0088724c  43 38 a0 e1                                      asr r3, r3, #0x10
00887250  08 82 a0 e1                                      lsl r8, r8, #4
00887254  01 00 a0 e3                                      mov r0, #1
00887258  00 10 a0 e3                                      mov r1, #0
0088725c  0c 21 a0 e1                                      lsl r2, ip, #2
00887260  04 30 8d e5                                      str r3, [sp, #4]
00887264  18 80 8d e5                                      str r8, [sp, #0x18]
00887268  8c a0 a0 e1                                      lsl sl, ip, #1
0088726c  24 00 8d e5                                      str r0, [sp, #0x24]
00887270  1c 10 8d e5                                      str r1, [sp, #0x1c]
00887274  34 20 8d e5                                      str r2, [sp, #0x34]
00887278  20 10 9d e5                                      ldr r1, [sp, #0x20]
0088727c  00 00 51 e3                                      cmp r1, #0
00887280  5a 00 00 da                                      ble #0x8873f0
00887284  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00887288  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0088728c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00887290  10 00 9d e5                                      ldr r0, [sp, #0x10]
00887294  03 80 9c e7                                      ldr r8, [ip, r3]
00887298  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0088729c  10 90 9d e5                                      ldr sb, [sp, #0x10]
008872a0  01 01 80 e0                                      add r0, r0, r1, lsl #2
008872a4  03 70 9c e7                                      ldr r7, [ip, r3]
008872a8  1a be 82 e2                                      add fp, r2, #0x1a0
008872ac  00 10 a0 e3                                      mov r1, #0
008872b0  40 20 8d e2                                      add r2, sp, #0x40
008872b4  14 00 8d e5                                      str r0, [sp, #0x14]
008872b8  00 10 8d e5                                      str r1, [sp]
008872bc  0c 20 8d e5                                      str r2, [sp, #0xc]
008872c0  02 60 d9 e5                                      ldrb r6, [sb, #2]
008872c4  01 10 d9 e5                                      ldrb r1, [sb, #1]
008872c8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
008872cc  00 30 9d e5                                      ldr r3, [sp]
008872d0  06 68 a0 e1                                      lsl r6, r6, #0x10
008872d4  01 64 86 e0                                      add r6, r6, r1, lsl #8
008872d8  00 00 9d e5                                      ldr r0, [sp]
008872dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008872e0  03 20 dc e7                                      ldrb r2, [ip, r3]
008872e4  03 30 d9 e5                                      ldrb r3, [sb, #3]
008872e8  00 00 91 e7                                      ldr r0, [r1, r0]
008872ec  02 60 86 e0                                      add r6, r6, r2
008872f0  03 6c 86 e0                                      add r6, r6, r3, lsl #24
008872f4  08 00 8d e5                                      str r0, [sp, #8]
008872f8  f0 40 db e1                                      ldrsh r4, [fp]
008872fc  02 00 db e5                                      ldrb r0, [fp, #2]
00887300  0f 30 06 e2                                      and r3, r6, #0xf
00887304  08 50 9d e5                                      ldr r5, [sp, #8]
00887308  00 c0 a0 e3                                      mov ip, #0
0088730c  13 00 00 ea                                      b #0x887360
00887310  04 40 62 e0                                      rsb r4, r2, r4
00887314  04 20 9d e5                                      ldr r2, [sp, #4]
00887318  02 00 54 e1                                      cmp r4, r2
0088731c  02 40 a0 b1                                      movlt r4, r2
00887320  03 30 d7 e7                                      ldrb r3, [r7, r3]
00887324  03 00 80 e0                                      add r0, r0, r3
00887328  70 00 ef e6                                      uxtb r0, r0
0088732c  80 00 10 e3                                      tst r0, #0x80
00887330  00 00 a0 13                                      movne r0, #0
00887334  01 00 00 1a                                      bne #0x887340
00887338  58 00 50 e3                                      cmp r0, #0x58
0088733c  58 00 a0 23                                      movhs r0, #0x58
00887340  01 c0 8c e2                                      add ip, ip, #1
00887344  74 30 ff e6                                      uxth r3, r4
00887348  08 00 5c e3                                      cmp ip, #8
0088734c  b0 30 c5 e1                                      strh r3, [r5]
00887350  12 00 00 0a                                      beq #0x8873a0
00887354  46 62 a0 e1                                      asr r6, r6, #4
00887358  0a 50 85 e0                                      add r5, r5, sl
0088735c  0f 30 06 e2                                      and r3, r6, #0xf
00887360  80 20 a0 e1                                      lsl r2, r0, #1
00887364  f2 10 98 e1                                      ldrsh r1, [r8, r2]
00887368  04 00 13 e3                                      tst r3, #4
0088736c  c1 21 a0 e1                                      asr r2, r1, #3
00887370  01 20 82 10                                      addne r2, r2, r1
00887374  02 00 13 e3                                      tst r3, #2
00887378  c1 20 82 10                                      addne r2, r2, r1, asr #1
0088737c  01 00 13 e3                                      tst r3, #1
00887380  41 21 82 10                                      addne r2, r2, r1, asr #2
00887384  08 00 13 e3                                      tst r3, #8
00887388  e0 ff ff 1a                                      bne #0x887310
0088738c  04 40 82 e0                                      add r4, r2, r4
00887390  ff 1f 07 e3                                      movw r1, #0x7fff
00887394  01 00 54 e1                                      cmp r4, r1
00887398  01 40 a0 a1                                      movge r4, r1
0088739c  df ff ff ea                                      b #0x887320
008873a0  08 c0 9d e5                                      ldr ip, [sp, #8]
008873a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
008873a8  04 90 89 e2                                      add sb, sb, #4
008873ac  01 20 8c e0                                      add r2, ip, r1
008873b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
008873b4  b0 30 cb e1                                      strh r3, [fp]
008873b8  02 00 cb e5                                      strb r0, [fp, #2]
008873bc  00 00 9d e5                                      ldr r0, [sp]
008873c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008873c4  0c 00 59 e1                                      cmp sb, ip
008873c8  04 b0 8b e2                                      add fp, fp, #4
008873cc  00 20 81 e7                                      str r2, [r1, r0]
008873d0  04 00 80 e2                                      add r0, r0, #4
008873d4  00 00 8d e5                                      str r0, [sp]
008873d8  b8 ff ff 1a                                      bne #0x8872c0
008873dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008873e0  34 30 9d e5                                      ldr r3, [sp, #0x34]
008873e4  10 90 8d e5                                      str sb, [sp, #0x10]
008873e8  03 20 82 e0                                      add r2, r2, r3
008873ec  1c 20 8d e5                                      str r2, [sp, #0x1c]
008873f0  24 00 9d e5                                      ldr r0, [sp, #0x24]
008873f4  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
008873f8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
008873fc  08 00 80 e2                                      add r0, r0, #8
00887400  24 00 8d e5                                      str r0, [sp, #0x24]
00887404  0c 00 58 e1                                      cmp r8, ip
00887408  9a ff ff ba                                      blt #0x887278
0088740c  38 80 9d e5                                      ldr r8, [sp, #0x38]
00887410  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00887414  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00887418  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0088741c  03 20 8c e0                                      add r2, ip, r3
00887420  02 00 50 e1                                      cmp r0, r2
00887424  00 30 63 30                                      rsblo r3, r3, r0
00887428  24 30 8d 35                                      strlo r3, [sp, #0x24]
0088742c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00887430  64 d0 8d e2                                      add sp, sp, #0x64
00887434  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00887438  20 10 9d e5                                      ldr r1, [sp, #0x20]
0088743c  40 70 8d e5                                      str r7, [sp, #0x40]
00887440  00 00 51 e3                                      cmp r1, #0
00887444  40 10 8d c2                                      addgt r1, sp, #0x40
00887448  66 ff ff ca                                      bgt #0x8871e8
0088744c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00887450  01 c1 a0 e1                                      lsl ip, r1, #2
00887454  71 ff ff ea                                      b #0x887220
; mapping-symbol data/literal pool
00887458  b4 d9 10 00 94 38 00 00 60 21 00 00              .byte 0xb4, 0xd9, 0x10, 0x00, 0x94, 0x38, 0x00, 0x00, 0x60, 0x21, 0x00, 0x00

; FUNCTION 0x00887464, declared_size=224, range_size=224, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM4SeekEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::Seek(int, vox::SegmentState*)
; decoder-mode: arm
00887464  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00887468  18 30 90 e5                                      ldr r3, [r0, #0x18]
0088746c  00 70 92 e5                                      ldr r7, [r2]
00887470  02 50 a0 e1                                      mov r5, r2
00887474  04 30 93 e5                                      ldr r3, [r3, #4]
00887478  18 20 a0 e3                                      mov r2, #0x18
0088747c  00 60 51 e2                                      subs r6, r1, #0
00887480  92 37 23 e0                                      mla r3, r2, r7, r3
00887484  10 60 95 b5                                      ldrlt r6, [r5, #0x10]
00887488  08 30 93 e5                                      ldr r3, [r3, #8]
0088748c  00 40 a0 e1                                      mov r4, r0
00887490  3c 80 95 e5                                      ldr r8, [r5, #0x3c]
00887494  03 00 56 e1                                      cmp r6, r3
00887498  00 70 e0 c3                                      mvngt r7, #0
0088749c  01 00 00 da                                      ble #0x8874a8
008874a0  07 00 a0 e1                                      mov r0, r7
008874a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008874a8  70 11 90 e5                                      ldr r1, [r0, #0x170]
008874ac  06 00 a0 e1                                      mov r0, r6
008874b0  e5 1d ea eb                                      bl #0x30ec4c
008874b4  f0 c1 d4 e1                                      ldrsh ip, [r4, #0x10]
008874b8  18 30 a0 e3                                      mov r3, #0x18
008874bc  93 07 07 e0                                      mul r7, r3, r7
008874c0  9c 00 0c e0                                      mul ip, ip, r0
008874c4  00 a0 a0 e1                                      mov sl, r0
008874c8  08 c0 85 e5                                      str ip, [r5, #8]
008874cc  18 10 94 e5                                      ldr r1, [r4, #0x18]
008874d0  14 e0 94 e5                                      ldr lr, [r4, #0x14]
008874d4  04 30 94 e5                                      ldr r3, [r4, #4]
008874d8  04 10 91 e5                                      ldr r1, [r1, #4]
008874dc  00 20 a0 e3                                      mov r2, #0
008874e0  03 00 a0 e1                                      mov r0, r3
008874e4  07 10 91 e7                                      ldr r1, [r1, r7]
008874e8  00 30 93 e5                                      ldr r3, [r3]
008874ec  01 10 8e e0                                      add r1, lr, r1
008874f0  0c 10 81 e0                                      add r1, r1, ip
008874f4  0f e0 a0 e1                                      mov lr, pc
008874f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008874fc  00 70 50 e2                                      subs r7, r0, #0
00887500  e6 ff ff 1a                                      bne #0x8874a0
00887504  70 11 94 e5                                      ldr r1, [r4, #0x170]
00887508  08 31 84 e0                                      add r3, r4, r8, lsl #2
0088750c  05 20 a0 e1                                      mov r2, r5
00887510  91 0a 0a e0                                      mul sl, r1, sl
00887514  04 00 a0 e1                                      mov r0, r4
00887518  06 60 6a e0                                      rsb r6, sl, r6
0088751c  0a a0 86 e0                                      add sl, r6, sl
00887520  84 61 83 e5                                      str r6, [r3, #0x184]
00887524  0c a0 85 e5                                      str sl, [r5, #0xc]
00887528  74 31 94 e5                                      ldr r3, [r4, #0x174]
0088752c  08 11 93 e7                                      ldr r1, [r3, r8, lsl #2]
00887530  cc fe ff eb                                      bl #0x887068
00887534  5e 80 88 e2                                      add r8, r8, #0x5e
00887538  08 01 84 e7                                      str r0, [r4, r8, lsl #2]
0088753c  07 00 a0 e1                                      mov r0, r7
00887540  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00887544, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM34SetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::SetDecodingBufferToSegmentPosition(vox::SegmentState*)
; decoder-mode: arm
00887544  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00887548  0c 60 91 e5                                      ldr r6, [r1, #0xc]
0088754c  70 81 90 e5                                      ldr r8, [r0, #0x170]
00887550  00 50 a0 e1                                      mov r5, r0
00887554  3c 70 91 e5                                      ldr r7, [r1, #0x3c]
00887558  01 40 a0 e1                                      mov r4, r1
0088755c  06 00 a0 e1                                      mov r0, r6
00887560  08 10 a0 e1                                      mov r1, r8
00887564  b8 1d ea eb                                      bl #0x30ec4c
00887568  98 00 00 e0                                      mul r0, r8, r0
0088756c  0c 00 84 e5                                      str r0, [r4, #0xc]
00887570  70 11 95 e5                                      ldr r1, [r5, #0x170]
00887574  b4 1d ea eb                                      bl #0x30ec4c
00887578  f0 31 d5 e1                                      ldrsh r3, [r5, #0x10]
0088757c  04 20 a0 e1                                      mov r2, r4
00887580  93 00 03 e0                                      mul r3, r3, r0
00887584  05 00 a0 e1                                      mov r0, r5
00887588  08 30 84 e5                                      str r3, [r4, #8]
0088758c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00887590  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00887594  b3 fe ff eb                                      bl #0x887068
00887598  5e 30 87 e2                                      add r3, r7, #0x5e
0088759c  03 01 85 e7                                      str r0, [r5, r3, lsl #2]
008875a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008875a4  07 51 85 e0                                      add r5, r5, r7, lsl #2
008875a8  06 30 63 e0                                      rsb r3, r3, r6
008875ac  84 31 85 e5                                      str r3, [r5, #0x184]
008875b0  0c 60 84 e5                                      str r6, [r4, #0xc]
008875b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008875b8, declared_size=680, range_size=680, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderIMAADPCM::DecodeSegment(void*, int, vox::SegmentState*)
; decoder-mode: arm
008875b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008875bc  00 40 a0 e1                                      mov r4, r0
008875c0  f2 01 d0 e1                                      ldrsh r0, [r0, #0x12]
008875c4  fa 50 d4 e1                                      ldrsh r5, [r4, #0xa]
008875c8  0c d0 4d e2                                      sub sp, sp, #0xc
008875cc  04 10 8d e5                                      str r1, [sp, #4]
008875d0  c0 11 a0 e1                                      asr r1, r0, #3
008875d4  95 01 01 e0                                      mul r1, r5, r1
008875d8  02 00 a0 e1                                      mov r0, r2
008875dc  03 60 a0 e1                                      mov r6, r3
008875e0  2f 1b ea eb                                      bl #0x30e2a4
008875e4  00 00 50 e3                                      cmp r0, #0
008875e8  00 00 8d e5                                      str r0, [sp]
008875ec  3c 90 96 e5                                      ldr sb, [r6, #0x3c]
008875f0  00 00 a0 d3                                      movle r0, #0
008875f4  60 00 00 da                                      ble #0x88777c
008875f8  09 a1 84 e0                                      add sl, r4, sb, lsl #2
008875fc  09 b1 a0 e1                                      lsl fp, sb, #2
00887600  61 af 8a e2                                      add sl, sl, #0x184
00887604  00 80 9d e5                                      ldr r8, [sp]
00887608  5e 90 89 e2                                      add sb, sb, #0x5e
0088760c  3e 00 00 ea                                      b #0x88770c
00887610  09 01 94 e7                                      ldr r0, [r4, sb, lsl #2]
00887614  00 30 9a e5                                      ldr r3, [sl]
00887618  00 00 53 e1                                      cmp r3, r0
0088761c  48 00 00 0a                                      beq #0x887744
00887620  00 00 50 e3                                      cmp r0, #0
00887624  50 00 00 0a                                      beq #0x88776c
00887628  14 70 96 e5                                      ldr r7, [r6, #0x14]
0088762c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00887630  00 10 9a e5                                      ldr r1, [sl]
00887634  01 70 87 e2                                      add r7, r7, #1
00887638  07 70 63 e0                                      rsb r7, r3, r7
0088763c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887640  00 20 9d e5                                      ldr r2, [sp]
00887644  00 00 61 e0                                      rsb r0, r1, r0
00887648  0b 30 93 e7                                      ldr r3, [r3, fp]
0088764c  95 01 01 e0                                      mul r1, r5, r1
00887650  07 00 58 e1                                      cmp r8, r7
00887654  08 70 a0 b1                                      movlt r7, r8
00887658  07 70 a0 a1                                      movge r7, r7
0088765c  00 00 57 e1                                      cmp r7, r0
00887660  00 70 a0 a1                                      movge r7, r0
00887664  02 00 68 e0                                      rsb r0, r8, r2
00887668  81 10 83 e0                                      add r1, r3, r1, lsl #1
0088766c  95 07 02 e0                                      mul r2, r5, r7
00887670  04 30 9d e5                                      ldr r3, [sp, #4]
00887674  95 00 00 e0                                      mul r0, r5, r0
00887678  82 20 a0 e1                                      lsl r2, r2, #1
0088767c  80 00 83 e0                                      add r0, r3, r0, lsl #1
00887680  78 1c ea eb                                      bl #0x30e868
00887684  00 30 9a e5                                      ldr r3, [sl]
00887688  08 80 67 e0                                      rsb r8, r7, r8
0088768c  03 30 87 e0                                      add r3, r7, r3
00887690  00 30 8a e5                                      str r3, [sl]
00887694  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00887698  14 30 96 e5                                      ldr r3, [r6, #0x14]
0088769c  02 70 87 e0                                      add r7, r7, r2
008876a0  03 00 57 e1                                      cmp r7, r3
008876a4  0c 70 86 e5                                      str r7, [r6, #0xc]
008876a8  15 00 00 9a                                      bls #0x887704
008876ac  18 20 96 e5                                      ldr r2, [r6, #0x18]
008876b0  a2 00 b0 e1                                      lsrs r0, r2, #1
008876b4  1c 30 96 05                                      ldreq r3, [r6, #0x1c]
008876b8  02 00 00 0a                                      beq #0x8876c8
008876bc  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
008876c0  03 00 52 e1                                      cmp r2, r3
008876c4  49 00 00 0a                                      beq #0x8877f0
008876c8  01 30 43 e2                                      sub r3, r3, #1
008876cc  00 00 53 e3                                      cmp r3, #0
008876d0  1c 30 86 e5                                      str r3, [r6, #0x1c]
008876d4  05 00 00 1a                                      bne #0x8876f0
008876d8  20 30 96 e5                                      ldr r3, [r6, #0x20]
008876dc  01 00 53 e3                                      cmp r3, #1
008876e0  4b 00 00 0a                                      beq #0x887814
008876e4  04 30 96 e5                                      ldr r3, [r6, #4]
008876e8  01 00 53 e3                                      cmp r3, #1
008876ec  58 00 00 0a                                      beq #0x887854
008876f0  24 30 96 e5                                      ldr r3, [r6, #0x24]
008876f4  03 00 53 e3                                      cmp r3, #3
008876f8  29 00 00 0a                                      beq #0x8877a4
008876fc  04 00 53 e3                                      cmp r3, #4
00887700  35 00 00 0a                                      beq #0x8877dc
00887704  00 00 58 e3                                      cmp r8, #0
00887708  30 00 00 da                                      ble #0x8877d0
0088770c  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
00887710  00 00 53 e3                                      cmp r3, #0
00887714  bd ff ff 0a                                      beq #0x887610
00887718  00 30 94 e5                                      ldr r3, [r4]
0088771c  04 00 a0 e1                                      mov r0, r4
00887720  06 10 a0 e1                                      mov r1, r6
00887724  0f e0 a0 e1                                      mov lr, pc
00887728  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0088772c  00 00 a0 e3                                      mov r0, #0
00887730  40 00 c6 e5                                      strb r0, [r6, #0x40]
00887734  09 01 94 e7                                      ldr r0, [r4, sb, lsl #2]
00887738  00 30 9a e5                                      ldr r3, [sl]
0088773c  00 00 53 e1                                      cmp r3, r0
00887740  b6 ff ff 1a                                      bne #0x887620
00887744  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887748  06 20 a0 e1                                      mov r2, r6
0088774c  04 00 a0 e1                                      mov r0, r4
00887750  0b 10 93 e7                                      ldr r1, [r3, fp]
00887754  43 fe ff eb                                      bl #0x887068
00887758  00 20 a0 e3                                      mov r2, #0
0088775c  00 00 50 e3                                      cmp r0, #0
00887760  09 01 84 e7                                      str r0, [r4, sb, lsl #2]
00887764  00 20 8a e5                                      str r2, [sl]
00887768  ae ff ff 1a                                      bne #0x887628
0088776c  01 30 a0 e3                                      mov r3, #1
00887770  24 30 86 e5                                      str r3, [r6, #0x24]
00887774  00 30 9d e5                                      ldr r3, [sp]
00887778  03 00 68 e0                                      rsb r0, r8, r3
0088777c  04 30 96 e5                                      ldr r3, [r6, #4]
00887780  03 00 53 e3                                      cmp r3, #3
00887784  01 30 a0 03                                      moveq r3, #1
00887788  24 30 86 05                                      streq r3, [r6, #0x24]
0088778c  f2 31 d4 e1                                      ldrsh r3, [r4, #0x12]
00887790  c3 31 a0 e1                                      asr r3, r3, #3
00887794  95 03 05 e0                                      mul r5, r5, r3
00887798  90 05 00 e0                                      mul r0, r0, r5
0088779c  0c d0 8d e2                                      add sp, sp, #0xc
008877a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008877a4  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
008877a8  00 00 53 e3                                      cmp r3, #0
008877ac  d4 ff ff 0a                                      beq #0x887704
008877b0  00 30 94 e5                                      ldr r3, [r4]
008877b4  04 00 a0 e1                                      mov r0, r4
008877b8  00 10 e0 e3                                      mvn r1, #0
008877bc  06 20 a0 e1                                      mov r2, r6
008877c0  0f e0 a0 e1                                      mov lr, pc
008877c4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008877c8  00 00 58 e3                                      cmp r8, #0
008877cc  ce ff ff ca                                      bgt #0x88770c
008877d0  00 20 9d e5                                      ldr r2, [sp]
008877d4  02 00 68 e0                                      rsb r0, r8, r2
008877d8  e7 ff ff ea                                      b #0x88777c
008877dc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
008877e0  14 30 96 e5                                      ldr r3, [r6, #0x14]
008877e4  03 00 52 e1                                      cmp r2, r3
008877e8  c5 ff ff 9a                                      bls #0x887704
008877ec  de ff ff ea                                      b #0x88776c
008877f0  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
008877f4  00 20 96 e5                                      ldr r2, [r6]
008877f8  0c 00 a0 e3                                      mov r0, #0xc
008877fc  00 10 91 e5                                      ldr r1, [r1]
00887800  90 02 02 e0                                      mul r2, r0, r2
00887804  02 20 91 e7                                      ldr r2, [r1, r2]
00887808  04 20 92 e5                                      ldr r2, [r2, #4]
0088780c  10 20 86 e5                                      str r2, [r6, #0x10]
00887810  ac ff ff ea                                      b #0x8876c8
00887814  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00887818  00 30 96 e5                                      ldr r3, [r6]
0088781c  00 10 92 e5                                      ldr r1, [r2]
00887820  0c 20 a0 e3                                      mov r2, #0xc
00887824  92 03 03 e0                                      mul r3, r2, r3
00887828  03 20 81 e0                                      add r2, r1, r3
0088782c  04 20 92 e5                                      ldr r2, [r2, #4]
00887830  03 30 91 e7                                      ldr r3, [r1, r3]
00887834  02 20 63 e0                                      rsb r2, r3, r2
00887838  42 21 a0 e1                                      asr r2, r2, #2
0088783c  01 20 42 e2                                      sub r2, r2, #1
00887840  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00887844  14 30 86 e5                                      str r3, [r6, #0x14]
00887848  04 30 96 e5                                      ldr r3, [r6, #4]
0088784c  01 00 53 e3                                      cmp r3, #1
00887850  a6 ff ff 1a                                      bne #0x8876f0
00887854  04 00 a0 e1                                      mov r0, r4
00887858  b8 f7 ff eb                                      bl #0x885740
0088785c  a3 ff ff ea                                      b #0x8876f0

; FUNCTION 0x00887860, declared_size=684, range_size=684, mode=arm
; class-group: vox::VoxNativeSubDecoderIMAADPCM
; alias: _ZN3vox27VoxNativeSubDecoderIMAADPCM30DecodeCurrentSegmentWithOffsetEPvi
; demangled: vox::VoxNativeSubDecoderIMAADPCM::DecodeCurrentSegmentWithOffset(void*, int)
; decoder-mode: arm
00887860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00887864  f2 51 d0 e1                                      ldrsh r5, [r0, #0x12]
00887868  fa 80 d0 e1                                      ldrsh r8, [r0, #0xa]
0088786c  0c d0 4d e2                                      sub sp, sp, #0xc
00887870  c5 51 a0 e1                                      asr r5, r5, #3
00887874  00 40 a0 e1                                      mov r4, r0
00887878  00 10 8d e5                                      str r1, [sp]
0088787c  02 00 a0 e1                                      mov r0, r2
00887880  98 05 01 e0                                      mul r1, r8, r5
00887884  86 1a ea eb                                      bl #0x30e2a4
00887888  68 31 94 e5                                      ldr r3, [r4, #0x168]
0088788c  00 90 a0 e1                                      mov sb, r0
00887890  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
00887894  00 00 53 e3                                      cmp r3, #0
00887898  00 60 a0 d1                                      movle r6, r0
0088789c  00 30 a0 d3                                      movle r3, #0
008878a0  09 00 00 da                                      ble #0x8878cc
008878a4  93 08 03 e0                                      mul r3, r3, r8
008878a8  00 00 9d e5                                      ldr r0, [sp]
008878ac  95 03 02 e0                                      mul r2, r5, r3
008878b0  00 10 a0 e3                                      mov r1, #0
008878b4  e9 1a ea eb                                      bl #0x30e460
008878b8  68 61 94 e5                                      ldr r6, [r4, #0x168]
008878bc  00 30 a0 e3                                      mov r3, #0
008878c0  68 31 84 e5                                      str r3, [r4, #0x168]
008878c4  09 60 66 e0                                      rsb r6, r6, sb
008878c8  09 30 66 e0                                      rsb r3, r6, sb
008878cc  00 00 56 e3                                      cmp r6, #0
008878d0  5e 00 00 da                                      ble #0x887a50
008878d4  0a 71 84 e0                                      add r7, r4, sl, lsl #2
008878d8  12 0e 84 e2                                      add r0, r4, #0x120
008878dc  0a b1 a0 e1                                      lsl fp, sl, #2
008878e0  61 7f 87 e2                                      add r7, r7, #0x184
008878e4  04 00 8d e5                                      str r0, [sp, #4]
008878e8  5e a0 8a e2                                      add sl, sl, #0x5e
008878ec  3c 00 00 ea                                      b #0x8879e4
008878f0  0a 01 94 e7                                      ldr r0, [r4, sl, lsl #2]
008878f4  00 30 97 e5                                      ldr r3, [r7]
008878f8  00 00 53 e1                                      cmp r3, r0
008878fc  46 00 00 0a                                      beq #0x887a1c
00887900  00 00 50 e3                                      cmp r0, #0
00887904  4e 00 00 0a                                      beq #0x887a44
00887908  34 51 94 e5                                      ldr r5, [r4, #0x134]
0088790c  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00887910  00 10 97 e5                                      ldr r1, [r7]
00887914  01 50 85 e2                                      add r5, r5, #1
00887918  05 50 63 e0                                      rsb r5, r3, r5
0088791c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887920  00 00 61 e0                                      rsb r0, r1, r0
00887924  98 01 01 e0                                      mul r1, r8, r1
00887928  0b 30 93 e7                                      ldr r3, [r3, fp]
0088792c  05 00 56 e1                                      cmp r6, r5
00887930  06 50 a0 b1                                      movlt r5, r6
00887934  05 50 a0 a1                                      movge r5, r5
00887938  00 00 55 e1                                      cmp r5, r0
0088793c  00 50 a0 a1                                      movge r5, r0
00887940  09 00 66 e0                                      rsb r0, r6, sb
00887944  98 05 02 e0                                      mul r2, r8, r5
00887948  81 10 83 e0                                      add r1, r3, r1, lsl #1
0088794c  98 00 00 e0                                      mul r0, r8, r0
00887950  00 30 9d e5                                      ldr r3, [sp]
00887954  82 20 a0 e1                                      lsl r2, r2, #1
00887958  06 60 65 e0                                      rsb r6, r5, r6
0088795c  80 00 83 e0                                      add r0, r3, r0, lsl #1
00887960  c0 1b ea eb                                      bl #0x30e868
00887964  00 30 97 e5                                      ldr r3, [r7]
00887968  03 30 85 e0                                      add r3, r5, r3
0088796c  00 30 87 e5                                      str r3, [r7]
00887970  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00887974  34 31 94 e5                                      ldr r3, [r4, #0x134]
00887978  02 50 85 e0                                      add r5, r5, r2
0088797c  03 00 55 e1                                      cmp r5, r3
00887980  2c 51 84 e5                                      str r5, [r4, #0x12c]
00887984  14 00 00 9a                                      bls #0x8879dc
00887988  38 21 94 e5                                      ldr r2, [r4, #0x138]
0088798c  a2 00 b0 e1                                      lsrs r0, r2, #1
00887990  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
00887994  02 00 00 0a                                      beq #0x8879a4
00887998  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
0088799c  03 00 52 e1                                      cmp r2, r3
008879a0  42 00 00 0a                                      beq #0x887ab0
008879a4  01 30 43 e2                                      sub r3, r3, #1
008879a8  00 00 53 e3                                      cmp r3, #0
008879ac  3c 31 84 e5                                      str r3, [r4, #0x13c]
008879b0  04 00 00 1a                                      bne #0x8879c8
008879b4  40 31 94 e5                                      ldr r3, [r4, #0x140]
008879b8  01 00 53 e3                                      cmp r3, #1
008879bc  44 00 00 0a                                      beq #0x887ad4
008879c0  04 00 a0 e1                                      mov r0, r4
008879c4  5d f7 ff eb                                      bl #0x885740
008879c8  44 31 94 e5                                      ldr r3, [r4, #0x144]
008879cc  03 00 53 e3                                      cmp r3, #3
008879d0  24 00 00 0a                                      beq #0x887a68
008879d4  04 00 53 e3                                      cmp r3, #4
008879d8  2f 00 00 0a                                      beq #0x887a9c
008879dc  00 00 56 e3                                      cmp r6, #0
008879e0  2b 00 00 da                                      ble #0x887a94
008879e4  60 31 d4 e5                                      ldrb r3, [r4, #0x160]
008879e8  00 00 53 e3                                      cmp r3, #0
008879ec  bf ff ff 0a                                      beq #0x8878f0
008879f0  00 30 94 e5                                      ldr r3, [r4]
008879f4  04 00 a0 e1                                      mov r0, r4
008879f8  04 10 9d e5                                      ldr r1, [sp, #4]
008879fc  0f e0 a0 e1                                      mov lr, pc
00887a00  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00887a04  00 10 a0 e3                                      mov r1, #0
00887a08  60 11 c4 e5                                      strb r1, [r4, #0x160]
00887a0c  0a 01 94 e7                                      ldr r0, [r4, sl, lsl #2]
00887a10  00 30 97 e5                                      ldr r3, [r7]
00887a14  00 00 53 e1                                      cmp r3, r0
00887a18  b8 ff ff 1a                                      bne #0x887900
00887a1c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00887a20  04 00 a0 e1                                      mov r0, r4
00887a24  04 20 9d e5                                      ldr r2, [sp, #4]
00887a28  0b 10 93 e7                                      ldr r1, [r3, fp]
00887a2c  8d fd ff eb                                      bl #0x887068
00887a30  00 30 a0 e3                                      mov r3, #0
00887a34  00 00 50 e3                                      cmp r0, #0
00887a38  0a 01 84 e7                                      str r0, [r4, sl, lsl #2]
00887a3c  00 30 87 e5                                      str r3, [r7]
00887a40  b0 ff ff 1a                                      bne #0x887908
00887a44  01 30 a0 e3                                      mov r3, #1
00887a48  44 31 84 e5                                      str r3, [r4, #0x144]
00887a4c  09 30 66 e0                                      rsb r3, r6, sb
00887a50  f2 01 d4 e1                                      ldrsh r0, [r4, #0x12]
00887a54  c0 01 a0 e1                                      asr r0, r0, #3
00887a58  98 00 00 e0                                      mul r0, r8, r0
00887a5c  93 00 00 e0                                      mul r0, r3, r0
00887a60  0c d0 8d e2                                      add sp, sp, #0xc
00887a64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00887a68  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00887a6c  00 00 53 e3                                      cmp r3, #0
00887a70  d9 ff ff 0a                                      beq #0x8879dc
00887a74  00 30 94 e5                                      ldr r3, [r4]
00887a78  04 00 a0 e1                                      mov r0, r4
00887a7c  00 10 e0 e3                                      mvn r1, #0
00887a80  04 20 9d e5                                      ldr r2, [sp, #4]
00887a84  0f e0 a0 e1                                      mov lr, pc
00887a88  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00887a8c  00 00 56 e3                                      cmp r6, #0
00887a90  d3 ff ff ca                                      bgt #0x8879e4
00887a94  09 30 66 e0                                      rsb r3, r6, sb
00887a98  ec ff ff ea                                      b #0x887a50
00887a9c  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00887aa0  34 31 94 e5                                      ldr r3, [r4, #0x134]
00887aa4  03 00 52 e1                                      cmp r2, r3
00887aa8  cb ff ff 9a                                      bls #0x8879dc
00887aac  e4 ff ff ea                                      b #0x887a44
00887ab0  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00887ab4  20 21 94 e5                                      ldr r2, [r4, #0x120]
00887ab8  0c 00 a0 e3                                      mov r0, #0xc
00887abc  00 10 91 e5                                      ldr r1, [r1]
00887ac0  90 02 02 e0                                      mul r2, r0, r2
00887ac4  02 20 91 e7                                      ldr r2, [r1, r2]
00887ac8  04 20 92 e5                                      ldr r2, [r2, #4]
00887acc  30 21 84 e5                                      str r2, [r4, #0x130]
00887ad0  b3 ff ff ea                                      b #0x8879a4
00887ad4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00887ad8  20 31 94 e5                                      ldr r3, [r4, #0x120]
00887adc  0c 10 a0 e3                                      mov r1, #0xc
00887ae0  00 20 92 e5                                      ldr r2, [r2]
00887ae4  91 03 03 e0                                      mul r3, r1, r3
00887ae8  03 10 82 e0                                      add r1, r2, r3
00887aec  03 30 92 e7                                      ldr r3, [r2, r3]
00887af0  04 20 91 e5                                      ldr r2, [r1, #4]
00887af4  02 20 63 e0                                      rsb r2, r3, r2
00887af8  42 21 a0 e1                                      asr r2, r2, #2
00887afc  01 20 42 e2                                      sub r2, r2, #1
00887b00  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00887b04  34 31 84 e5                                      str r3, [r4, #0x134]
00887b08  ac ff ff ea                                      b #0x8879c0
