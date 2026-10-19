; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008151c8, declared_size=32, range_size=32, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager11GetInstanceEv
; demangled: CPacketManager::GetInstance()
; decoder-mode: arm
008151c8  10 30 9f e5                                      ldr r3, [pc, #0x10]
008151cc  10 20 9f e5                                      ldr r2, [pc, #0x10]
008151d0  03 30 8f e0                                      add r3, pc, r3
008151d4  02 20 93 e7                                      ldr r2, [r3, r2]
008151d8  00 00 92 e5                                      ldr r0, [r2]
008151dc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008151e0  c0 f8 17 00 b0 11 00 00                          .byte 0xc0, 0xf8, 0x17, 0x00, 0xb0, 0x11, 0x00, 0x00

; FUNCTION 0x008151ec, declared_size=40, range_size=40, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager13IsInitializedEv
; demangled: CPacketManager::IsInitialized()
; decoder-mode: arm
008151ec  18 30 9f e5                                      ldr r3, [pc, #0x18]
008151f0  18 20 9f e5                                      ldr r2, [pc, #0x18]
008151f4  03 30 8f e0                                      add r3, pc, r3
008151f8  02 20 93 e7                                      ldr r2, [r3, r2]
008151fc  00 00 92 e5                                      ldr r0, [r2]
00815200  00 00 50 e3                                      cmp r0, #0
00815204  04 00 d0 15                                      ldrbne r0, [r0, #4]
00815208  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0081520c  9c f8 17 00 b0 11 00 00                          .byte 0x9c, 0xf8, 0x17, 0x00, 0xb0, 0x11, 0x00, 0x00

; FUNCTION 0x00815214, declared_size=68, range_size=68, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager9TerminateEv
; demangled: CPacketManager::Terminate()
; decoder-mode: arm
00815214  34 30 9f e5                                      ldr r3, [pc, #0x34]
00815218  34 20 9f e5                                      ldr r2, [pc, #0x34]
0081521c  10 40 2d e9                                      push {r4, lr}
00815220  03 30 8f e0                                      add r3, pc, r3
00815224  02 40 93 e7                                      ldr r4, [r3, r2]
00815228  00 30 94 e5                                      ldr r3, [r4]
0081522c  00 00 53 e3                                      cmp r3, #0
00815230  05 00 00 0a                                      beq #0x81524c
00815234  03 00 a0 e1                                      mov r0, r3
00815238  00 30 93 e5                                      ldr r3, [r3]
0081523c  0f e0 a0 e1                                      mov lr, pc
00815240  04 f0 93 e5                                      ldr pc, [r3, #4]
00815244  00 30 a0 e3                                      mov r3, #0
00815248  00 30 84 e5                                      str r3, [r4]
0081524c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00815250  70 f8 17 00 b0 11 00 00                          .byte 0x70, 0xf8, 0x17, 0x00, 0xb0, 0x11, 0x00, 0x00

; FUNCTION 0x00815258, declared_size=104, range_size=104, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager18RegisterPacketSlotE12PACKET_SLOTSPFbiiR12NetBitStreamEPFviiS2_EPFviiES8_
; demangled: CPacketManager::RegisterPacketSlot(PACKET_SLOTS, bool (*)(int, int, NetBitStream&), void (*)(int, int, NetBitStream&), void (*)(int, int), void (*)(int, int))
; decoder-mode: arm
00815258  54 c0 9f e5                                      ldr ip, [pc, #0x54]
0081525c  f0 00 2d e9                                      push {r4, r5, r6, r7}
00815260  50 40 9f e5                                      ldr r4, [pc, #0x50]
00815264  0c c0 8f e0                                      add ip, pc, ip
00815268  04 50 9c e7                                      ldr r5, [ip, r4]
0081526c  5c 40 a0 e3                                      mov r4, #0x5c
00815270  94 00 04 e0                                      mul r4, r4, r0
00815274  04 60 d5 e7                                      ldrb r6, [r5, r4]
00815278  00 00 56 e3                                      cmp r6, #0
0081527c  04 60 85 e0                                      add r6, r5, r4
00815280  08 00 00 1a                                      bne #0x8152a8
00815284  01 70 a0 e3                                      mov r7, #1
00815288  04 70 c5 e7                                      strb r7, [r5, r4]
0081528c  28 40 9f e5                                      ldr r4, [pc, #0x28]
00815290  04 c0 9c e7                                      ldr ip, [ip, r4]
00815294  10 40 9d e5                                      ldr r4, [sp, #0x10]
00815298  1e 00 86 e9                                      stmib r6, {r1, r2, r3, r4}
0081529c  00 30 dc e5                                      ldrb r3, [ip]
008152a0  17 00 83 e1                                      orr r0, r3, r7, lsl r0
008152a4  00 00 cc e5                                      strb r0, [ip]
008152a8  00 00 a0 e3                                      mov r0, #0
008152ac  f0 00 bd e8                                      pop {r4, r5, r6, r7}
008152b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008152b4  2c f8 17 00 c8 28 00 00 68 37 00 00              .byte 0x2c, 0xf8, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00, 0x68, 0x37, 0x00, 0x00

; FUNCTION 0x008152c0, declared_size=100, range_size=100, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager20UnregisterPacketSlotE12PACKET_SLOTS
; demangled: CPacketManager::UnregisterPacketSlot(PACKET_SLOTS)
; decoder-mode: arm
008152c0  50 30 9f e5                                      ldr r3, [pc, #0x50]
008152c4  50 20 9f e5                                      ldr r2, [pc, #0x50]
008152c8  04 40 2d e5                                      str r4, [sp, #-4]!
008152cc  03 30 8f e0                                      add r3, pc, r3
008152d0  02 40 93 e7                                      ldr r4, [r3, r2]
008152d4  5c c0 a0 e3                                      mov ip, #0x5c
008152d8  40 20 9f e5                                      ldr r2, [pc, #0x40]
008152dc  9c 00 0c e0                                      mul ip, ip, r0
008152e0  02 10 93 e7                                      ldr r1, [r3, r2]
008152e4  00 30 a0 e3                                      mov r3, #0
008152e8  0c 20 84 e0                                      add r2, r4, ip
008152ec  0c 30 c4 e7                                      strb r3, [r4, ip]
008152f0  10 30 82 e5                                      str r3, [r2, #0x10]
008152f4  04 30 82 e5                                      str r3, [r2, #4]
008152f8  08 30 82 e5                                      str r3, [r2, #8]
008152fc  0c 30 82 e5                                      str r3, [r2, #0xc]
00815300  00 30 d1 e5                                      ldrb r3, [r1]
00815304  01 20 a0 e3                                      mov r2, #1
00815308  12 00 c3 e1                                      bic r0, r3, r2, lsl r0
0081530c  00 00 c1 e5                                      strb r0, [r1]
00815310  10 00 bd e8                                      ldm sp!, {r4}
00815314  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00815318  c4 f7 17 00 c8 28 00 00 68 37 00 00              .byte 0xc4, 0xf7, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00, 0x68, 0x37, 0x00, 0x00

; FUNCTION 0x00815324, declared_size=40, range_size=40, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager16IsPacketSlotUsedE12PACKET_SLOTS
; demangled: CPacketManager::IsPacketSlotUsed(PACKET_SLOTS)
; decoder-mode: arm
00815324  18 30 9f e5                                      ldr r3, [pc, #0x18]
00815328  18 20 9f e5                                      ldr r2, [pc, #0x18]
0081532c  5c 10 a0 e3                                      mov r1, #0x5c
00815330  03 30 8f e0                                      add r3, pc, r3
00815334  02 20 93 e7                                      ldr r2, [r3, r2]
00815338  91 00 01 e0                                      mul r1, r1, r0
0081533c  01 00 d2 e7                                      ldrb r0, [r2, r1]
00815340  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00815344  60 f7 17 00 c8 28 00 00                          .byte 0x60, 0xf7, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00

; FUNCTION 0x0081534c, declared_size=44, range_size=44, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager14GetPacketCountEv
; demangled: CPacketManager::GetPacketCount()
; decoder-mode: arm
0081534c  24 30 b0 e5                                      ldr r3, [r0, #0x24]!
00815350  00 00 53 e1                                      cmp r3, r0
00815354  00 20 a0 03                                      moveq r2, #0
00815358  04 00 00 0a                                      beq #0x815370
0081535c  00 20 a0 e3                                      mov r2, #0
00815360  00 30 93 e5                                      ldr r3, [r3]
00815364  01 20 82 e2                                      add r2, r2, #1
00815368  03 00 50 e1                                      cmp r0, r3
0081536c  fb ff ff 1a                                      bne #0x815360
00815370  02 00 a0 e1                                      mov r0, r2
00815374  1e ff 2f e1                                      bx lr

; FUNCTION 0x00815378, declared_size=48, range_size=48, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager19ArePacketsAvailableEv
; demangled: CPacketManager::ArePacketsAvailable()
; decoder-mode: arm
00815378  24 30 b0 e5                                      ldr r3, [r0, #0x24]!
0081537c  00 00 53 e1                                      cmp r3, r0
00815380  00 00 a0 03                                      moveq r0, #0
00815384  1e ff 2f 01                                      bxeq lr
00815388  00 20 a0 e3                                      mov r2, #0
0081538c  00 30 93 e5                                      ldr r3, [r3]
00815390  01 20 82 e2                                      add r2, r2, #1
00815394  03 00 50 e1                                      cmp r0, r3
00815398  fb ff ff 1a                                      bne #0x81538c
0081539c  00 00 52 e2                                      subs r0, r2, #0
008153a0  01 00 a0 13                                      movne r0, #1
008153a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008153a8, declared_size=56, range_size=56, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager18SequenceMoreRecentEjj
; demangled: CPacketManager::SequenceMoreRecent(unsigned int, unsigned int)
; decoder-mode: arm
008153a8  01 00 50 e1                                      cmp r0, r1
008153ac  03 00 00 9a                                      bls #0x8153c0
008153b0  00 30 61 e0                                      rsb r3, r1, r0
008153b4  02 09 53 e3                                      cmp r3, #0x8000
008153b8  01 00 a0 93                                      movls r0, #1
008153bc  1e ff 2f 91                                      bxls lr
008153c0  01 00 50 e1                                      cmp r0, r1
008153c4  00 00 a0 23                                      movhs r0, #0
008153c8  1e ff 2f 21                                      bxhs lr
008153cc  01 00 60 e0                                      rsb r0, r0, r1
008153d0  02 09 50 e3                                      cmp r0, #0x8000
008153d4  00 00 a0 93                                      movls r0, #0
008153d8  01 00 a0 83                                      movhi r0, #1
008153dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008153e0, declared_size=28, range_size=28, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager17GetSequenceOffsetEjj
; demangled: CPacketManager::GetSequenceOffset(unsigned int, unsigned int)
; decoder-mode: arm
008153e0  01 00 62 e0                                      rsb r0, r2, r1
008153e4  02 09 70 e3                                      cmn r0, #0x8000
008153e8  01 08 80 b2                                      addlt r0, r0, #0x10000
008153ec  1e ff 2f b1                                      bxlt lr
008153f0  02 09 50 e3                                      cmp r0, #0x8000
008153f4  01 08 40 c2                                      subgt r0, r0, #0x10000
008153f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008153fc, declared_size=4, range_size=4, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager15PrintStatisticsEv
; demangled: CPacketManager::PrintStatistics()
; decoder-mode: arm
008153fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00815400, declared_size=116, range_size=116, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager10ReadHeaderER12NetBitStream
; demangled: CPacketManager::ReadHeader(NetBitStream&)
; decoder-mode: arm
00815400  70 40 2d e9                                      push {r4, r5, r6, lr}
00815404  10 10 a0 e3                                      mov r1, #0x10
00815408  00 40 a0 e1                                      mov r4, r0
0081540c  02 00 a0 e1                                      mov r0, r2
00815410  02 50 a0 e1                                      mov r5, r2
00815414  85 e4 ff eb                                      bl #0x80e630
00815418  10 10 a0 e3                                      mov r1, #0x10
0081541c  00 00 84 e5                                      str r0, [r4]
00815420  05 00 a0 e1                                      mov r0, r5
00815424  81 e4 ff eb                                      bl #0x80e630
00815428  20 10 a0 e3                                      mov r1, #0x20
0081542c  04 00 84 e5                                      str r0, [r4, #4]
00815430  05 00 a0 e1                                      mov r0, r5
00815434  7d e4 ff eb                                      bl #0x80e630
00815438  10 10 a0 e3                                      mov r1, #0x10
0081543c  08 00 84 e5                                      str r0, [r4, #8]
00815440  05 00 a0 e1                                      mov r0, r5
00815444  79 e4 ff eb                                      bl #0x80e630
00815448  10 10 a0 e3                                      mov r1, #0x10
0081544c  10 00 84 e5                                      str r0, [r4, #0x10]
00815450  05 00 a0 e1                                      mov r0, r5
00815454  75 e4 ff eb                                      bl #0x80e630
00815458  08 10 a0 e3                                      mov r1, #8
0081545c  0c 00 84 e5                                      str r0, [r4, #0xc]
00815460  05 00 a0 e1                                      mov r0, r5
00815464  71 e4 ff eb                                      bl #0x80e630
00815468  14 00 c4 e5                                      strb r0, [r4, #0x14]
0081546c  04 00 a0 e1                                      mov r0, r4
00815470  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00815474, declared_size=112, range_size=112, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager11WriteHeaderERNS_16tPacketMgrHeaderER12NetBitStream
; demangled: CPacketManager::WriteHeader(CPacketManager::tPacketMgrHeader&, NetBitStream&)
; decoder-mode: arm
00815474  70 40 2d e9                                      push {r4, r5, r6, lr}
00815478  02 50 a0 e1                                      mov r5, r2
0081547c  01 40 a0 e1                                      mov r4, r1
00815480  05 00 a0 e1                                      mov r0, r5
00815484  00 10 91 e5                                      ldr r1, [r1]
00815488  10 20 a0 e3                                      mov r2, #0x10
0081548c  52 e4 ff eb                                      bl #0x80e5dc
00815490  05 00 a0 e1                                      mov r0, r5
00815494  04 10 94 e5                                      ldr r1, [r4, #4]
00815498  10 20 a0 e3                                      mov r2, #0x10
0081549c  4e e4 ff eb                                      bl #0x80e5dc
008154a0  05 00 a0 e1                                      mov r0, r5
008154a4  08 10 94 e5                                      ldr r1, [r4, #8]
008154a8  20 20 a0 e3                                      mov r2, #0x20
008154ac  4a e4 ff eb                                      bl #0x80e5dc
008154b0  05 00 a0 e1                                      mov r0, r5
008154b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
008154b8  10 20 a0 e3                                      mov r2, #0x10
008154bc  46 e4 ff eb                                      bl #0x80e5dc
008154c0  05 00 a0 e1                                      mov r0, r5
008154c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
008154c8  10 20 a0 e3                                      mov r2, #0x10
008154cc  42 e4 ff eb                                      bl #0x80e5dc
008154d0  14 10 d4 e5                                      ldrb r1, [r4, #0x14]
008154d4  05 00 a0 e1                                      mov r0, r5
008154d8  08 20 a0 e3                                      mov r2, #8
008154dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008154e0  3d e4 ff ea                                      b #0x80e5dc

; FUNCTION 0x00815504, declared_size=180, range_size=180, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager26ProcessAcknowledgedPacketsEv
; demangled: CPacketManager::ProcessAcknowledgedPackets()
; decoder-mode: arm
00815504  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00815508  68 20 90 e5                                      ldr r2, [r0, #0x68]
0081550c  64 30 90 e5                                      ldr r3, [r0, #0x64]
00815510  98 10 9f e5                                      ldr r1, [pc, #0x98]
00815514  00 60 a0 e1                                      mov r6, r0
00815518  02 00 63 e0                                      rsb r0, r3, r2
0081551c  20 01 b0 e1                                      lsrs r0, r0, #2
00815520  01 10 8f e0                                      add r1, pc, r1
00815524  1e 00 00 0a                                      beq #0x8155a4
00815528  84 20 9f e5                                      ldr r2, [pc, #0x84]
0081552c  00 50 a0 e3                                      mov r5, #0
00815530  02 70 91 e7                                      ldr r7, [r1, r2]
00815534  2e 4e 87 e2                                      add r4, r7, #0x2e0
00815538  05 a1 93 e7                                      ldr sl, [r3, r5, lsl #2]
0081553c  07 80 a0 e1                                      mov r8, r7
00815540  7a 90 ff e6                                      uxth sb, sl
00815544  2a a8 a0 e1                                      lsr sl, sl, #0x10
00815548  00 30 d8 e5                                      ldrb r3, [r8]
0081554c  00 00 53 e3                                      cmp r3, #0
00815550  05 00 00 0a                                      beq #0x81556c
00815554  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00815558  0a 00 a0 e1                                      mov r0, sl
0081555c  09 10 a0 e1                                      mov r1, sb
00815560  00 00 53 e3                                      cmp r3, #0
00815564  00 00 00 0a                                      beq #0x81556c
00815568  33 ff 2f e1                                      blx r3
0081556c  5c 80 88 e2                                      add r8, r8, #0x5c
00815570  04 00 58 e1                                      cmp r8, r4
00815574  f3 ff ff 1a                                      bne #0x815548
00815578  fd 99 ff eb                                      bl #0x7fbd74
0081557c  0a 10 a0 e1                                      mov r1, sl
00815580  04 20 a0 e3                                      mov r2, #4
00815584  00 30 a0 e3                                      mov r3, #0
00815588  c1 9a ff eb                                      bl #0x7fc094
0081558c  68 20 96 e5                                      ldr r2, [r6, #0x68]
00815590  64 30 96 e5                                      ldr r3, [r6, #0x64]
00815594  01 50 85 e2                                      add r5, r5, #1
00815598  02 10 63 e0                                      rsb r1, r3, r2
0081559c  41 01 55 e1                                      cmp r5, r1, asr #2
008155a0  e4 ff ff 3a                                      blo #0x815538
008155a4  03 00 52 e1                                      cmp r2, r3
008155a8  68 30 86 15                                      strne r3, [r6, #0x68]
008155ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
008155b0  70 f5 17 00 c8 28 00 00                          .byte 0x70, 0xf5, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00

; FUNCTION 0x00815cac, declared_size=212, range_size=212, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager17AcknowledgePacketERNS_16tPacketMgrHeaderE
; demangled: CPacketManager::AcknowledgePacket(CPacketManager::tPacketMgrHeader&)
; decoder-mode: arm
00815cac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00815cb0  10 30 91 e5                                      ldr r3, [r1, #0x10]
00815cb4  0c d0 4d e2                                      sub sp, sp, #0xc
00815cb8  08 40 8d e2                                      add r4, sp, #8
00815cbc  04 30 24 e5                                      str r3, [r4, #-4]!
00815cc0  34 50 80 e2                                      add r5, r0, #0x34
00815cc4  00 70 a0 e1                                      mov r7, r0
00815cc8  01 60 a0 e1                                      mov r6, r1
00815ccc  05 00 a0 e1                                      mov r0, r5
00815cd0  04 10 a0 e1                                      mov r1, r4
00815cd4  c8 ff ff eb                                      bl #0x815bfc
00815cd8  00 20 96 e5                                      ldr r2, [r6]
00815cdc  04 10 90 e5                                      ldr r1, [r0, #4]
00815ce0  07 00 a0 e1                                      mov r0, r7
00815ce4  bd fd ff eb                                      bl #0x8153e0
00815ce8  00 70 50 e2                                      subs r7, r0, #0
00815cec  0f 00 00 ba                                      blt #0x815d30
00815cf0  1f 00 57 e3                                      cmp r7, #0x1f
00815cf4  06 00 00 ca                                      bgt #0x815d14
00815cf8  05 00 a0 e1                                      mov r0, r5
00815cfc  04 10 a0 e1                                      mov r1, r4
00815d00  bd ff ff eb                                      bl #0x815bfc
00815d04  08 30 90 e5                                      ldr r3, [r0, #8]
00815d08  01 20 a0 e3                                      mov r2, #1
00815d0c  12 77 83 e1                                      orr r7, r3, r2, lsl r7
00815d10  08 70 80 e5                                      str r7, [r0, #8]
00815d14  05 00 a0 e1                                      mov r0, r5
00815d18  04 10 a0 e1                                      mov r1, r4
00815d1c  b6 ff ff eb                                      bl #0x815bfc
00815d20  b8 30 d0 e1                                      ldrh r3, [r0, #8]
00815d24  08 30 80 e5                                      str r3, [r0, #8]
00815d28  0c d0 8d e2                                      add sp, sp, #0xc
00815d2c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00815d30  04 10 a0 e1                                      mov r1, r4
00815d34  05 00 a0 e1                                      mov r0, r5
00815d38  af ff ff eb                                      bl #0x815bfc
00815d3c  00 30 96 e5                                      ldr r3, [r6]
00815d40  04 10 a0 e1                                      mov r1, r4
00815d44  00 70 67 e2                                      rsb r7, r7, #0
00815d48  04 30 80 e5                                      str r3, [r0, #4]
00815d4c  05 00 a0 e1                                      mov r0, r5
00815d50  a9 ff ff eb                                      bl #0x815bfc
00815d54  08 20 90 e5                                      ldr r2, [r0, #8]
00815d58  00 30 a0 e1                                      mov r3, r0
00815d5c  04 10 a0 e1                                      mov r1, r4
00815d60  12 77 a0 e1                                      lsl r7, r2, r7
00815d64  05 00 a0 e1                                      mov r0, r5
00815d68  08 70 83 e5                                      str r7, [r3, #8]
00815d6c  a2 ff ff eb                                      bl #0x815bfc
00815d70  08 30 90 e5                                      ldr r3, [r0, #8]
00815d74  01 30 83 e3                                      orr r3, r3, #1
00815d78  08 30 80 e5                                      str r3, [r0, #8]
00815d7c  e4 ff ff ea                                      b #0x815d14

; FUNCTION 0x00815d80, declared_size=144, range_size=144, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager13IsPacketValidERNS_16tPacketMgrHeaderE
; demangled: CPacketManager::IsPacketValid(CPacketManager::tPacketMgrHeader&)
; decoder-mode: arm
00815d80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00815d84  01 70 a0 e1                                      mov r7, r1
00815d88  0c 50 91 e5                                      ldr r5, [r1, #0xc]
00815d8c  00 40 a0 e1                                      mov r4, r0
00815d90  7d ac ff eb                                      bl #0x800f8c
00815d94  00 30 90 e5                                      ldr r3, [r0]
00815d98  0f e0 a0 e1                                      mov lr, pc
00815d9c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00815da0  00 00 55 e1                                      cmp r5, r0
00815da4  01 00 00 0a                                      beq #0x815db0
00815da8  00 00 a0 e3                                      mov r0, #0
00815dac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00815db0  34 60 84 e2                                      add r6, r4, #0x34
00815db4  10 50 87 e2                                      add r5, r7, #0x10
00815db8  05 10 a0 e1                                      mov r1, r5
00815dbc  06 00 a0 e1                                      mov r0, r6
00815dc0  8d ff ff eb                                      bl #0x815bfc
00815dc4  00 20 97 e5                                      ldr r2, [r7]
00815dc8  04 10 90 e5                                      ldr r1, [r0, #4]
00815dcc  04 00 a0 e1                                      mov r0, r4
00815dd0  82 fd ff eb                                      bl #0x8153e0
00815dd4  00 40 50 e2                                      subs r4, r0, #0
00815dd8  0a 00 00 ba                                      blt #0x815e08
00815ddc  1f 00 54 e3                                      cmp r4, #0x1f
00815de0  f0 ff ff ca                                      bgt #0x815da8
00815de4  06 00 a0 e1                                      mov r0, r6
00815de8  05 10 a0 e1                                      mov r1, r5
00815dec  82 ff ff eb                                      bl #0x815bfc
00815df0  08 30 90 e5                                      ldr r3, [r0, #8]
00815df4  01 20 a0 e3                                      mov r2, #1
00815df8  12 34 13 e0                                      ands r3, r3, r2, lsl r4
00815dfc  00 00 a0 13                                      movne r0, #0
00815e00  01 00 a0 03                                      moveq r0, #1
00815e04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00815e08  01 00 a0 e3                                      mov r0, #1
00815e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00815e10, declared_size=184, range_size=184, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager19PreparePacketHeaderEiR12NetBitStream
; demangled: CPacketManager::PreparePacketHeader(int, NetBitStream&)
; decoder-mode: arm
00815e10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00815e14  24 d0 4d e2                                      sub sp, sp, #0x24
00815e18  20 40 8d e2                                      add r4, sp, #0x20
00815e1c  1c 10 24 e5                                      str r1, [r4, #-0x1c]!
00815e20  34 50 80 e2                                      add r5, r0, #0x34
00815e24  00 60 a0 e1                                      mov r6, r0
00815e28  04 10 a0 e1                                      mov r1, r4
00815e2c  05 00 a0 e1                                      mov r0, r5
00815e30  02 70 a0 e1                                      mov r7, r2
00815e34  70 ff ff eb                                      bl #0x815bfc
00815e38  00 30 90 e5                                      ldr r3, [r0]
00815e3c  04 10 a0 e1                                      mov r1, r4
00815e40  05 00 a0 e1                                      mov r0, r5
00815e44  01 30 83 e2                                      add r3, r3, #1
00815e48  73 30 ff e6                                      uxth r3, r3
00815e4c  08 30 8d e5                                      str r3, [sp, #8]
00815e50  69 ff ff eb                                      bl #0x815bfc
00815e54  04 30 90 e5                                      ldr r3, [r0, #4]
00815e58  04 10 a0 e1                                      mov r1, r4
00815e5c  05 00 a0 e1                                      mov r0, r5
00815e60  0c 30 8d e5                                      str r3, [sp, #0xc]
00815e64  64 ff ff eb                                      bl #0x815bfc
00815e68  08 30 90 e5                                      ldr r3, [r0, #8]
00815e6c  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
00815e70  10 30 8d e5                                      str r3, [sp, #0x10]
00815e74  44 ac ff eb                                      bl #0x800f8c
00815e78  00 30 90 e5                                      ldr r3, [r0]
00815e7c  0f e0 a0 e1                                      mov lr, pc
00815e80  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00815e84  38 30 9f e5                                      ldr r3, [pc, #0x38]
00815e88  04 40 8f e0                                      add r4, pc, r4
00815e8c  04 c0 9d e5                                      ldr ip, [sp, #4]
00815e90  03 30 94 e7                                      ldr r3, [r4, r3]
00815e94  18 00 8d e5                                      str r0, [sp, #0x18]
00815e98  07 20 a0 e1                                      mov r2, r7
00815e9c  00 30 d3 e5                                      ldrb r3, [r3]
00815ea0  06 00 a0 e1                                      mov r0, r6
00815ea4  08 10 8d e2                                      add r1, sp, #8
00815ea8  14 c0 8d e5                                      str ip, [sp, #0x14]
00815eac  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00815eb0  6f fd ff eb                                      bl #0x815474
00815eb4  08 00 9d e5                                      ldr r0, [sp, #8]
00815eb8  24 d0 8d e2                                      add sp, sp, #0x24
00815ebc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00815ec0  08 ec 17 00 68 37 00 00                          .byte 0x08, 0xec, 0x17, 0x00, 0x68, 0x37, 0x00, 0x00

; FUNCTION 0x00815ec8, declared_size=388, range_size=388, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager17PreparePacketDataEijR12NetBitStream
; demangled: CPacketManager::PreparePacketData(int, unsigned int, NetBitStream&)
; decoder-mode: arm
00815ec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00815ecc  70 c1 9f e5                                      ldr ip, [pc, #0x170]
00815ed0  70 e1 9f e5                                      ldr lr, [pc, #0x170]
00815ed4  14 d0 4d e2                                      sub sp, sp, #0x14
00815ed8  00 40 a0 e3                                      mov r4, #0
00815edc  0c c0 8f e0                                      add ip, pc, ip
00815ee0  10 90 8d e2                                      add sb, sp, #0x10
00815ee4  0e 50 9c e7                                      ldr r5, [ip, lr]
00815ee8  04 10 29 e5                                      str r1, [sb, #-4]!
00815eec  08 20 8d e5                                      str r2, [sp, #8]
00815ef0  03 70 a0 e1                                      mov r7, r3
00815ef4  34 b0 80 e2                                      add fp, r0, #0x34
00815ef8  04 60 a0 e1                                      mov r6, r4
00815efc  04 80 a0 e1                                      mov r8, r4
00815f00  37 00 00 ea                                      b #0x815fe4
00815f04  04 30 9a e5                                      ldr r3, [sl, #4]
00815f08  09 10 a0 e1                                      mov r1, sb
00815f0c  0b 00 a0 e1                                      mov r0, fp
00815f10  00 00 53 e3                                      cmp r3, #0
00815f14  36 00 00 0a                                      beq #0x815ff4
00815f18  37 ff ff eb                                      bl #0x815bfc
00815f1c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00815f20  07 00 a0 e1                                      mov r0, r7
00815f24  53 38 a0 e1                                      asr r3, r3, r8
00815f28  01 00 13 e3                                      tst r3, #1
00815f2c  30 00 00 0a                                      beq #0x815ff4
00815f30  08 20 97 e5                                      ldr r2, [r7, #8]
00815f34  00 20 8d e5                                      str r2, [sp]
00815f38  10 30 97 e5                                      ldr r3, [r7, #0x10]
00815f3c  04 30 8d e5                                      str r3, [sp, #4]
00815f40  32 e1 ff eb                                      bl #0x80e410
00815f44  01 10 a0 e3                                      mov r1, #1
00815f48  01 20 a0 e1                                      mov r2, r1
00815f4c  07 00 a0 e1                                      mov r0, r7
00815f50  64 e1 ff eb                                      bl #0x80e4e8
00815f54  07 00 a0 e1                                      mov r0, r7
00815f58  04 10 a0 e1                                      mov r1, r4
00815f5c  20 20 a0 e3                                      mov r2, #0x20
00815f60  9d e1 ff eb                                      bl #0x80e5dc
00815f64  08 10 9d e5                                      ldr r1, [sp, #8]
00815f68  07 20 a0 e1                                      mov r2, r7
00815f6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00815f70  0f e0 a0 e1                                      mov lr, pc
00815f74  04 f0 9a e5                                      ldr pc, [sl, #4]
00815f78  00 00 50 e3                                      cmp r0, #0
00815f7c  29 00 00 0a                                      beq #0x816028
00815f80  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00815f84  00 00 53 e3                                      cmp r3, #0
00815f88  26 00 00 1a                                      bne #0x816028
00815f8c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00815f90  01 10 9d e8                                      ldm sp, {r0, ip}
00815f94  07 20 13 e2                                      ands r2, r3, #7
00815f98  01 20 a0 13                                      movne r2, #1
00815f9c  80 11 6c e0                                      rsb r1, ip, r0, lsl #3
00815fa0  a3 21 82 e0                                      add r2, r2, r3, lsr #3
00815fa4  78 c5 00 e3                                      movw ip, #0x578
00815fa8  0c 00 52 e1                                      cmp r2, ip
00815fac  07 00 a0 e1                                      mov r0, r7
00815fb0  10 20 a0 e3                                      mov r2, #0x10
00815fb4  1b 00 00 8a                                      bhi #0x816028
00815fb8  08 c0 97 e5                                      ldr ip, [r7, #8]
00815fbc  01 44 84 e2                                      add r4, r4, #0x1000000
00815fc0  5c 60 86 e2                                      add r6, r6, #0x5c
00815fc4  8c 31 63 e0                                      rsb r3, r3, ip, lsl #3
00815fc8  01 10 63 e0                                      rsb r1, r3, r1
00815fcc  82 e1 ff eb                                      bl #0x80e5dc
00815fd0  02 48 84 e2                                      add r4, r4, #0x20000
00815fd4  2e 0e 56 e3                                      cmp r6, #0x2e0
00815fd8  01 80 88 e2                                      add r8, r8, #1
00815fdc  c1 4f 84 e2                                      add r4, r4, #0x304
00815fe0  0e 00 00 0a                                      beq #0x816020
00815fe4  05 30 d6 e7                                      ldrb r3, [r6, r5]
00815fe8  05 a0 86 e0                                      add sl, r6, r5
00815fec  00 00 53 e3                                      cmp r3, #0
00815ff0  c3 ff ff 1a                                      bne #0x815f04
00815ff4  07 00 a0 e1                                      mov r0, r7
00815ff8  00 10 a0 e3                                      mov r1, #0
00815ffc  01 20 a0 e3                                      mov r2, #1
00816000  38 e1 ff eb                                      bl #0x80e4e8
00816004  01 44 84 e2                                      add r4, r4, #0x1000000
00816008  5c 60 86 e2                                      add r6, r6, #0x5c
0081600c  02 48 84 e2                                      add r4, r4, #0x20000
00816010  2e 0e 56 e3                                      cmp r6, #0x2e0
00816014  01 80 88 e2                                      add r8, r8, #1
00816018  c1 4f 84 e2                                      add r4, r4, #0x304
0081601c  f0 ff ff 1a                                      bne #0x815fe4
00816020  14 d0 8d e2                                      add sp, sp, #0x14
00816024  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00816028  07 00 a0 e1                                      mov r0, r7
0081602c  02 e2 ff eb                                      bl #0x80e83c
00816030  07 00 a0 e1                                      mov r0, r7
00816034  00 10 a0 e3                                      mov r1, #0
00816038  01 20 a0 e3                                      mov r2, #1
0081603c  29 e1 ff eb                                      bl #0x80e4e8
00816040  ef ff ff ea                                      b #0x816004
; mapping-symbol data/literal pool
00816044  b4 eb 17 00 c8 28 00 00                          .byte 0xb4, 0xeb, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00

; FUNCTION 0x008162a4, declared_size=580, range_size=580, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManagerC1Ev
; demangled: CPacketManager::CPacketManager()
; decoder-mode: arm
008162a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008162a8  28 92 9f e5                                      ldr sb, [pc, #0x228]
008162ac  28 32 9f e5                                      ldr r3, [pc, #0x228]
008162b0  00 50 a0 e3                                      mov r5, #0
008162b4  09 90 8f e0                                      add sb, pc, sb
008162b8  03 30 99 e7                                      ldr r3, [sb, r3]
008162bc  08 80 80 e2                                      add r8, r0, #8
008162c0  00 40 a0 e1                                      mov r4, r0
008162c4  08 30 83 e2                                      add r3, r3, #8
008162c8  0c d0 4d e2                                      sub sp, sp, #0xc
008162cc  00 30 80 e5                                      str r3, [r0]
008162d0  04 50 c0 e5                                      strb r5, [r0, #4]
008162d4  08 00 a0 e1                                      mov r0, r8
008162d8  2e e0 ff eb                                      bl #0x80e398
008162dc  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
008162e0  04 30 a0 e1                                      mov r3, r4
008162e4  10 50 84 e5                                      str r5, [r4, #0x10]
008162e8  02 20 99 e7                                      ldr r2, [sb, r2]
008162ec  0c 50 e3 e5                                      strb r5, [r3, #0xc]!
008162f0  24 a0 84 e2                                      add sl, r4, #0x24
008162f4  04 70 a0 e1                                      mov r7, r4
008162f8  18 30 84 e5                                      str r3, [r4, #0x18]
008162fc  14 30 84 e5                                      str r3, [r4, #0x14]
00816300  1c 50 84 e5                                      str r5, [r4, #0x1c]
00816304  24 a0 84 e5                                      str sl, [r4, #0x24]
00816308  28 a0 84 e5                                      str sl, [r4, #0x28]
0081630c  2c 50 84 e5                                      str r5, [r4, #0x2c]
00816310  30 50 c4 e5                                      strb r5, [r4, #0x30]
00816314  38 50 84 e5                                      str r5, [r4, #0x38]
00816318  04 60 a0 e1                                      mov r6, r4
0081631c  34 50 e7 e5                                      strb r5, [r7, #0x34]!
00816320  04 30 a0 e1                                      mov r3, r4
00816324  3c 70 84 e5                                      str r7, [r4, #0x3c]
00816328  40 70 84 e5                                      str r7, [r4, #0x40]
0081632c  44 50 84 e5                                      str r5, [r4, #0x44]
00816330  50 50 84 e5                                      str r5, [r4, #0x50]
00816334  08 20 82 e2                                      add r2, r2, #8
00816338  4c 50 e6 e5                                      strb r5, [r6, #0x4c]!
0081633c  04 20 8d e5                                      str r2, [sp, #4]
00816340  54 60 84 e5                                      str r6, [r4, #0x54]
00816344  58 60 84 e5                                      str r6, [r4, #0x58]
00816348  5c 50 84 e5                                      str r5, [r4, #0x5c]
0081634c  64 50 84 e5                                      str r5, [r4, #0x64]
00816350  68 50 84 e5                                      str r5, [r4, #0x68]
00816354  6c 50 84 e5                                      str r5, [r4, #0x6c]
00816358  74 50 84 e5                                      str r5, [r4, #0x74]
0081635c  70 50 e3 e5                                      strb r5, [r3, #0x70]!
00816360  7c 30 84 e5                                      str r3, [r4, #0x7c]
00816364  78 30 84 e5                                      str r3, [r4, #0x78]
00816368  88 20 84 e5                                      str r2, [r4, #0x88]
0081636c  80 50 84 e5                                      str r5, [r4, #0x80]
00816370  8c 00 84 e2                                      add r0, r4, #0x8c
00816374  e5 df ff eb                                      bl #0x80e310
00816378  04 30 a0 e1                                      mov r3, r4
0081637c  7d bf a0 e3                                      mov fp, #0x1f4
00816380  94 50 84 e5                                      str r5, [r4, #0x94]
00816384  90 50 e3 e5                                      strb r5, [r3, #0x90]!
00816388  9c 30 84 e5                                      str r3, [r4, #0x9c]
0081638c  98 30 84 e5                                      str r3, [r4, #0x98]
00816390  a0 50 84 e5                                      str r5, [r4, #0xa0]
00816394  a8 b0 84 e5                                      str fp, [r4, #0xa8]
00816398  04 20 9d e5                                      ldr r2, [sp, #4]
0081639c  b0 00 84 e2                                      add r0, r4, #0xb0
008163a0  ac 20 84 e5                                      str r2, [r4, #0xac]
008163a4  d9 df ff eb                                      bl #0x80e310
008163a8  04 30 a0 e1                                      mov r3, r4
008163ac  b8 50 84 e5                                      str r5, [r4, #0xb8]
008163b0  b4 50 e3 e5                                      strb r5, [r3, #0xb4]!
008163b4  c0 30 84 e5                                      str r3, [r4, #0xc0]
008163b8  bc 30 84 e5                                      str r3, [r4, #0xbc]
008163bc  c4 50 84 e5                                      str r5, [r4, #0xc4]
008163c0  cc b0 84 e5                                      str fp, [r4, #0xcc]
008163c4  04 30 9d e5                                      ldr r3, [sp, #4]
008163c8  d4 00 84 e2                                      add r0, r4, #0xd4
008163cc  d0 30 84 e5                                      str r3, [r4, #0xd0]
008163d0  ce df ff eb                                      bl #0x80e310
008163d4  04 30 a0 e1                                      mov r3, r4
008163d8  dc 50 84 e5                                      str r5, [r4, #0xdc]
008163dc  d8 50 e3 e5                                      strb r5, [r3, #0xd8]!
008163e0  e4 30 84 e5                                      str r3, [r4, #0xe4]
008163e4  04 20 9d e5                                      ldr r2, [sp, #4]
008163e8  f8 00 84 e2                                      add r0, r4, #0xf8
008163ec  e0 30 84 e5                                      str r3, [r4, #0xe0]
008163f0  f4 20 84 e5                                      str r2, [r4, #0xf4]
008163f4  e8 50 84 e5                                      str r5, [r4, #0xe8]
008163f8  f0 b0 84 e5                                      str fp, [r4, #0xf0]
008163fc  c3 df ff eb                                      bl #0x80e310
00816400  04 30 a0 e1                                      mov r3, r4
00816404  00 51 84 e5                                      str r5, [r4, #0x100]
00816408  fc 50 e3 e5                                      strb r5, [r3, #0xfc]!
0081640c  08 31 84 e5                                      str r3, [r4, #0x108]
00816410  04 31 84 e5                                      str r3, [r4, #0x104]
00816414  14 b1 84 e5                                      str fp, [r4, #0x114]
00816418  0c 51 84 e5                                      str r5, [r4, #0x10c]
0081641c  54 96 ff eb                                      bl #0x7fbd74
00816420  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00816424  05 10 a0 e1                                      mov r1, r5
00816428  06 00 a0 e3                                      mov r0, #6
0081642c  03 20 99 e7                                      ldr r2, [sb, r3]
00816430  c9 96 ff eb                                      bl #0x7fbf5c
00816434  08 00 a0 e1                                      mov r0, r8
00816438  cb df ff eb                                      bl #0x80e36c
0081643c  0a 00 a0 e1                                      mov r0, sl
00816440  74 ff ff eb                                      bl #0x816218
00816444  44 30 94 e5                                      ldr r3, [r4, #0x44]
00816448  05 00 53 e1                                      cmp r3, r5
0081644c  0e 00 00 1a                                      bne #0x81648c
00816450  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00816454  00 00 53 e3                                      cmp r3, #0
00816458  15 00 00 1a                                      bne #0x8164b4
0081645c  64 30 94 e5                                      ldr r3, [r4, #0x64]
00816460  68 20 94 e5                                      ldr r2, [r4, #0x68]
00816464  02 00 53 e1                                      cmp r3, r2
00816468  68 30 84 15                                      strne r3, [r4, #0x68]
0081646c  47 43 00 eb                                      bl #0x827190
00816470  01 30 a0 e3                                      mov r3, #1
00816474  08 00 a0 e1                                      mov r0, r8
00816478  04 30 c4 e5                                      strb r3, [r4, #4]
0081647c  b9 df ff eb                                      bl #0x80e368
00816480  04 00 a0 e1                                      mov r0, r4
00816484  0c d0 8d e2                                      add sp, sp, #0xc
00816488  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081648c  07 00 a0 e1                                      mov r0, r7
00816490  38 10 94 e5                                      ldr r1, [r4, #0x38]
00816494  74 ff ff eb                                      bl #0x81626c
00816498  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0081649c  40 70 84 e5                                      str r7, [r4, #0x40]
008164a0  44 50 84 e5                                      str r5, [r4, #0x44]
008164a4  00 00 53 e3                                      cmp r3, #0
008164a8  3c 70 84 e5                                      str r7, [r4, #0x3c]
008164ac  38 50 84 e5                                      str r5, [r4, #0x38]
008164b0  e9 ff ff 0a                                      beq #0x81645c
008164b4  06 00 a0 e1                                      mov r0, r6
008164b8  50 10 94 e5                                      ldr r1, [r4, #0x50]
008164bc  8f af ff eb                                      bl #0x802300
008164c0  00 30 a0 e3                                      mov r3, #0
008164c4  58 60 84 e5                                      str r6, [r4, #0x58]
008164c8  5c 30 84 e5                                      str r3, [r4, #0x5c]
008164cc  54 60 84 e5                                      str r6, [r4, #0x54]
008164d0  50 30 84 e5                                      str r3, [r4, #0x50]
008164d4  e0 ff ff ea                                      b #0x81645c
; mapping-symbol data/literal pool
008164d8  dc e7 17 00 dc 38 00 00 b4 24 00 00 cc 37 00 00  .byte 0xdc, 0xe7, 0x17, 0x00, 0xdc, 0x38, 0x00, 0x00, 0xb4, 0x24, 0x00, 0x00, 0xcc, 0x37, 0x00, 0x00

; FUNCTION 0x008164e8, declared_size=88, range_size=88, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager10InitializeEv
; demangled: CPacketManager::Initialize()
; decoder-mode: arm
008164e8  48 30 9f e5                                      ldr r3, [pc, #0x48]
008164ec  48 20 9f e5                                      ldr r2, [pc, #0x48]
008164f0  70 40 2d e9                                      push {r4, r5, r6, lr}
008164f4  03 30 8f e0                                      add r3, pc, r3
008164f8  02 40 93 e7                                      ldr r4, [r3, r2]
008164fc  00 30 94 e5                                      ldr r3, [r4]
00816500  00 00 53 e3                                      cmp r3, #0
00816504  01 00 00 0a                                      beq #0x816510
00816508  00 00 a0 e3                                      mov r0, #0
0081650c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00816510  02 10 a0 e3                                      mov r1, #2
00816514  46 0f a0 e3                                      mov r0, #0x118
00816518  14 e8 eb eb                                      bl #0x310570
0081651c  00 50 a0 e1                                      mov r5, r0
00816520  5f ff ff eb                                      bl #0x8162a4
00816524  00 00 55 e3                                      cmp r5, #0
00816528  00 50 84 e5                                      str r5, [r4]
0081652c  f5 ff ff 1a                                      bne #0x816508
00816530  00 00 e0 e3                                      mvn r0, #0
00816534  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00816538  9c e5 17 00 b0 11 00 00                          .byte 0x9c, 0xe5, 0x17, 0x00, 0xb0, 0x11, 0x00, 0x00

; FUNCTION 0x00816540, declared_size=580, range_size=580, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManagerC2Ev
; demangled: CPacketManager::CPacketManager()
; decoder-mode: arm
00816540  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00816544  28 92 9f e5                                      ldr sb, [pc, #0x228]
00816548  28 32 9f e5                                      ldr r3, [pc, #0x228]
0081654c  00 50 a0 e3                                      mov r5, #0
00816550  09 90 8f e0                                      add sb, pc, sb
00816554  03 30 99 e7                                      ldr r3, [sb, r3]
00816558  08 80 80 e2                                      add r8, r0, #8
0081655c  00 40 a0 e1                                      mov r4, r0
00816560  08 30 83 e2                                      add r3, r3, #8
00816564  0c d0 4d e2                                      sub sp, sp, #0xc
00816568  00 30 80 e5                                      str r3, [r0]
0081656c  04 50 c0 e5                                      strb r5, [r0, #4]
00816570  08 00 a0 e1                                      mov r0, r8
00816574  87 df ff eb                                      bl #0x80e398
00816578  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
0081657c  04 30 a0 e1                                      mov r3, r4
00816580  10 50 84 e5                                      str r5, [r4, #0x10]
00816584  02 20 99 e7                                      ldr r2, [sb, r2]
00816588  0c 50 e3 e5                                      strb r5, [r3, #0xc]!
0081658c  24 a0 84 e2                                      add sl, r4, #0x24
00816590  04 70 a0 e1                                      mov r7, r4
00816594  18 30 84 e5                                      str r3, [r4, #0x18]
00816598  14 30 84 e5                                      str r3, [r4, #0x14]
0081659c  1c 50 84 e5                                      str r5, [r4, #0x1c]
008165a0  24 a0 84 e5                                      str sl, [r4, #0x24]
008165a4  28 a0 84 e5                                      str sl, [r4, #0x28]
008165a8  2c 50 84 e5                                      str r5, [r4, #0x2c]
008165ac  30 50 c4 e5                                      strb r5, [r4, #0x30]
008165b0  38 50 84 e5                                      str r5, [r4, #0x38]
008165b4  04 60 a0 e1                                      mov r6, r4
008165b8  34 50 e7 e5                                      strb r5, [r7, #0x34]!
008165bc  04 30 a0 e1                                      mov r3, r4
008165c0  3c 70 84 e5                                      str r7, [r4, #0x3c]
008165c4  40 70 84 e5                                      str r7, [r4, #0x40]
008165c8  44 50 84 e5                                      str r5, [r4, #0x44]
008165cc  50 50 84 e5                                      str r5, [r4, #0x50]
008165d0  08 20 82 e2                                      add r2, r2, #8
008165d4  4c 50 e6 e5                                      strb r5, [r6, #0x4c]!
008165d8  04 20 8d e5                                      str r2, [sp, #4]
008165dc  54 60 84 e5                                      str r6, [r4, #0x54]
008165e0  58 60 84 e5                                      str r6, [r4, #0x58]
008165e4  5c 50 84 e5                                      str r5, [r4, #0x5c]
008165e8  64 50 84 e5                                      str r5, [r4, #0x64]
008165ec  68 50 84 e5                                      str r5, [r4, #0x68]
008165f0  6c 50 84 e5                                      str r5, [r4, #0x6c]
008165f4  74 50 84 e5                                      str r5, [r4, #0x74]
008165f8  70 50 e3 e5                                      strb r5, [r3, #0x70]!
008165fc  7c 30 84 e5                                      str r3, [r4, #0x7c]
00816600  78 30 84 e5                                      str r3, [r4, #0x78]
00816604  88 20 84 e5                                      str r2, [r4, #0x88]
00816608  80 50 84 e5                                      str r5, [r4, #0x80]
0081660c  8c 00 84 e2                                      add r0, r4, #0x8c
00816610  3e df ff eb                                      bl #0x80e310
00816614  04 30 a0 e1                                      mov r3, r4
00816618  7d bf a0 e3                                      mov fp, #0x1f4
0081661c  94 50 84 e5                                      str r5, [r4, #0x94]
00816620  90 50 e3 e5                                      strb r5, [r3, #0x90]!
00816624  9c 30 84 e5                                      str r3, [r4, #0x9c]
00816628  98 30 84 e5                                      str r3, [r4, #0x98]
0081662c  a0 50 84 e5                                      str r5, [r4, #0xa0]
00816630  a8 b0 84 e5                                      str fp, [r4, #0xa8]
00816634  04 20 9d e5                                      ldr r2, [sp, #4]
00816638  b0 00 84 e2                                      add r0, r4, #0xb0
0081663c  ac 20 84 e5                                      str r2, [r4, #0xac]
00816640  32 df ff eb                                      bl #0x80e310
00816644  04 30 a0 e1                                      mov r3, r4
00816648  b8 50 84 e5                                      str r5, [r4, #0xb8]
0081664c  b4 50 e3 e5                                      strb r5, [r3, #0xb4]!
00816650  c0 30 84 e5                                      str r3, [r4, #0xc0]
00816654  bc 30 84 e5                                      str r3, [r4, #0xbc]
00816658  c4 50 84 e5                                      str r5, [r4, #0xc4]
0081665c  cc b0 84 e5                                      str fp, [r4, #0xcc]
00816660  04 30 9d e5                                      ldr r3, [sp, #4]
00816664  d4 00 84 e2                                      add r0, r4, #0xd4
00816668  d0 30 84 e5                                      str r3, [r4, #0xd0]
0081666c  27 df ff eb                                      bl #0x80e310
00816670  04 30 a0 e1                                      mov r3, r4
00816674  dc 50 84 e5                                      str r5, [r4, #0xdc]
00816678  d8 50 e3 e5                                      strb r5, [r3, #0xd8]!
0081667c  e4 30 84 e5                                      str r3, [r4, #0xe4]
00816680  04 20 9d e5                                      ldr r2, [sp, #4]
00816684  f8 00 84 e2                                      add r0, r4, #0xf8
00816688  e0 30 84 e5                                      str r3, [r4, #0xe0]
0081668c  f4 20 84 e5                                      str r2, [r4, #0xf4]
00816690  e8 50 84 e5                                      str r5, [r4, #0xe8]
00816694  f0 b0 84 e5                                      str fp, [r4, #0xf0]
00816698  1c df ff eb                                      bl #0x80e310
0081669c  04 30 a0 e1                                      mov r3, r4
008166a0  00 51 84 e5                                      str r5, [r4, #0x100]
008166a4  fc 50 e3 e5                                      strb r5, [r3, #0xfc]!
008166a8  08 31 84 e5                                      str r3, [r4, #0x108]
008166ac  04 31 84 e5                                      str r3, [r4, #0x104]
008166b0  14 b1 84 e5                                      str fp, [r4, #0x114]
008166b4  0c 51 84 e5                                      str r5, [r4, #0x10c]
008166b8  ad 95 ff eb                                      bl #0x7fbd74
008166bc  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
008166c0  05 10 a0 e1                                      mov r1, r5
008166c4  06 00 a0 e3                                      mov r0, #6
008166c8  03 20 99 e7                                      ldr r2, [sb, r3]
008166cc  22 96 ff eb                                      bl #0x7fbf5c
008166d0  08 00 a0 e1                                      mov r0, r8
008166d4  24 df ff eb                                      bl #0x80e36c
008166d8  0a 00 a0 e1                                      mov r0, sl
008166dc  cd fe ff eb                                      bl #0x816218
008166e0  44 30 94 e5                                      ldr r3, [r4, #0x44]
008166e4  05 00 53 e1                                      cmp r3, r5
008166e8  0e 00 00 1a                                      bne #0x816728
008166ec  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008166f0  00 00 53 e3                                      cmp r3, #0
008166f4  15 00 00 1a                                      bne #0x816750
008166f8  64 30 94 e5                                      ldr r3, [r4, #0x64]
008166fc  68 20 94 e5                                      ldr r2, [r4, #0x68]
00816700  02 00 53 e1                                      cmp r3, r2
00816704  68 30 84 15                                      strne r3, [r4, #0x68]
00816708  a0 42 00 eb                                      bl #0x827190
0081670c  01 30 a0 e3                                      mov r3, #1
00816710  08 00 a0 e1                                      mov r0, r8
00816714  04 30 c4 e5                                      strb r3, [r4, #4]
00816718  12 df ff eb                                      bl #0x80e368
0081671c  04 00 a0 e1                                      mov r0, r4
00816720  0c d0 8d e2                                      add sp, sp, #0xc
00816724  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00816728  07 00 a0 e1                                      mov r0, r7
0081672c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00816730  cd fe ff eb                                      bl #0x81626c
00816734  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00816738  40 70 84 e5                                      str r7, [r4, #0x40]
0081673c  44 50 84 e5                                      str r5, [r4, #0x44]
00816740  00 00 53 e3                                      cmp r3, #0
00816744  3c 70 84 e5                                      str r7, [r4, #0x3c]
00816748  38 50 84 e5                                      str r5, [r4, #0x38]
0081674c  e9 ff ff 0a                                      beq #0x8166f8
00816750  06 00 a0 e1                                      mov r0, r6
00816754  50 10 94 e5                                      ldr r1, [r4, #0x50]
00816758  e8 ae ff eb                                      bl #0x802300
0081675c  00 30 a0 e3                                      mov r3, #0
00816760  58 60 84 e5                                      str r6, [r4, #0x58]
00816764  5c 30 84 e5                                      str r3, [r4, #0x5c]
00816768  54 60 84 e5                                      str r6, [r4, #0x54]
0081676c  50 30 84 e5                                      str r3, [r4, #0x50]
00816770  e0 ff ff ea                                      b #0x8166f8
; mapping-symbol data/literal pool
00816774  40 e5 17 00 dc 38 00 00 b4 24 00 00 cc 37 00 00  .byte 0x40, 0xe5, 0x17, 0x00, 0xdc, 0x38, 0x00, 0x00, 0xb4, 0x24, 0x00, 0x00, 0xcc, 0x37, 0x00, 0x00

; FUNCTION 0x0081684c, declared_size=116, range_size=116, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager18SendWaitingPacketsEv
; demangled: CPacketManager::SendWaitingPackets()
; decoder-mode: arm
0081684c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00816850  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00816854  14 d0 4d e2                                      sub sp, sp, #0x14
00816858  00 40 a0 e1                                      mov r4, r0
0081685c  00 00 53 e3                                      cmp r3, #0
00816860  14 00 00 0a                                      beq #0x8168b8
00816864  0c 60 80 e2                                      add r6, r0, #0xc
00816868  0c 50 8d e2                                      add r5, sp, #0xc
0081686c  14 70 94 e5                                      ldr r7, [r4, #0x14]
00816870  3f 95 ff eb                                      bl #0x7fbd74
00816874  28 c0 97 e5                                      ldr ip, [r7, #0x28]
00816878  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
0081687c  14 20 97 e5                                      ldr r2, [r7, #0x14]
00816880  07 10 1c e2                                      ands r1, ip, #7
00816884  01 10 a0 13                                      movne r1, #1
00816888  ac c1 81 e0                                      add ip, r1, ip, lsr #3
0081688c  06 10 a0 e3                                      mov r1, #6
00816890  00 c0 8d e5                                      str ip, [sp]
00816894  57 97 ff eb                                      bl #0x7fc5f8
00816898  14 30 94 e5                                      ldr r3, [r4, #0x14]
0081689c  06 00 a0 e1                                      mov r0, r6
008168a0  05 10 a0 e1                                      mov r1, r5
008168a4  0c 30 8d e5                                      str r3, [sp, #0xc]
008168a8  d4 ff ff eb                                      bl #0x816800
008168ac  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
008168b0  00 00 53 e3                                      cmp r3, #0
008168b4  ec ff ff 1a                                      bne #0x81686c
008168b8  14 d0 8d e2                                      add sp, sp, #0x14
008168bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008168fc, declared_size=444, range_size=444, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager18ProcessLostPacketsEv
; demangled: CPacketManager::ProcessLostPackets()
; decoder-mode: arm
008168fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00816900  1c d0 4d e2                                      sub sp, sp, #0x1c
00816904  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
00816908  00 00 8d e5                                      str r0, [sp]
0081690c  54 50 90 e5                                      ldr r5, [r0, #0x54]
00816910  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00816914  02 20 8f e0                                      add r2, pc, r2
00816918  4c b0 80 e2                                      add fp, r0, #0x4c
0081691c  04 20 8d e5                                      str r2, [sp, #4]
00816920  05 00 5b e1                                      cmp fp, r5
00816924  10 20 8d e2                                      add r2, sp, #0x10
00816928  34 60 80 e2                                      add r6, r0, #0x34
0081692c  0c 30 8d e5                                      str r3, [sp, #0xc]
00816930  08 20 8d e5                                      str r2, [sp, #8]
00816934  44 00 00 0a                                      beq #0x816a4c
00816938  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0081693c  00 00 54 e3                                      cmp r4, #0
00816940  01 00 00 1a                                      bne #0x81694c
00816944  4a 00 00 ea                                      b #0x816a74
00816948  03 40 a0 e1                                      mov r4, r3
0081694c  08 30 94 e5                                      ldr r3, [r4, #8]
00816950  00 00 53 e3                                      cmp r3, #0
00816954  fb ff ff 1a                                      bne #0x816948
00816958  00 20 9d e5                                      ldr r2, [sp]
0081695c  10 80 95 e5                                      ldr r8, [r5, #0x10]
00816960  38 30 92 e5                                      ldr r3, [r2, #0x38]
00816964  78 90 ff e6                                      uxth sb, r8
00816968  28 88 a0 e1                                      lsr r8, r8, #0x10
0081696c  00 00 53 e3                                      cmp r3, #0
00816970  37 00 00 0a                                      beq #0x816a54
00816974  06 10 a0 e1                                      mov r1, r6
00816978  00 00 00 ea                                      b #0x816980
0081697c  02 30 a0 e1                                      mov r3, r2
00816980  10 20 93 e5                                      ldr r2, [r3, #0x10]
00816984  02 00 58 e1                                      cmp r8, r2
00816988  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
0081698c  08 20 93 d5                                      ldrle r2, [r3, #8]
00816990  01 30 a0 c1                                      movgt r3, r1
00816994  03 10 a0 e1                                      mov r1, r3
00816998  00 00 52 e3                                      cmp r2, #0
0081699c  f6 ff ff 1a                                      bne #0x81697c
008169a0  03 00 56 e1                                      cmp r6, r3
008169a4  2d 00 00 0a                                      beq #0x816a60
008169a8  10 20 93 e5                                      ldr r2, [r3, #0x10]
008169ac  02 00 58 e1                                      cmp r8, r2
008169b0  27 00 00 ba                                      blt #0x816a54
008169b4  03 00 56 e1                                      cmp r6, r3
008169b8  28 00 00 0a                                      beq #0x816a60
008169bc  74 9b ff eb                                      bl #0x7fd794
008169c0  00 30 90 e5                                      ldr r3, [r0]
008169c4  0f e0 a0 e1                                      mov lr, pc
008169c8  00 f0 93 e5                                      ldr pc, [r3]
008169cc  14 30 95 e5                                      ldr r3, [r5, #0x14]
008169d0  00 30 63 e0                                      rsb r3, r3, r0
008169d4  fa 0f 53 e3                                      cmp r3, #0x3e8
008169d8  18 00 00 da                                      ble #0x816a40
008169dc  04 20 9d e5                                      ldr r2, [sp, #4]
008169e0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008169e4  03 70 92 e7                                      ldr r7, [r2, r3]
008169e8  2e ae 87 e2                                      add sl, r7, #0x2e0
008169ec  00 30 d7 e5                                      ldrb r3, [r7]
008169f0  00 00 53 e3                                      cmp r3, #0
008169f4  05 00 00 0a                                      beq #0x816a10
008169f8  10 30 97 e5                                      ldr r3, [r7, #0x10]
008169fc  08 00 a0 e1                                      mov r0, r8
00816a00  09 10 a0 e1                                      mov r1, sb
00816a04  00 00 53 e3                                      cmp r3, #0
00816a08  00 00 00 0a                                      beq #0x816a10
00816a0c  33 ff 2f e1                                      blx r3
00816a10  5c 70 87 e2                                      add r7, r7, #0x5c
00816a14  0a 00 57 e1                                      cmp r7, sl
00816a18  f3 ff ff 1a                                      bne #0x8169ec
00816a1c  d4 94 ff eb                                      bl #0x7fbd74
00816a20  08 10 a0 e1                                      mov r1, r8
00816a24  04 20 a0 e3                                      mov r2, #4
00816a28  64 30 a0 e3                                      mov r3, #0x64
00816a2c  98 95 ff eb                                      bl #0x7fc094
00816a30  0b 00 a0 e1                                      mov r0, fp
00816a34  08 10 9d e5                                      ldr r1, [sp, #8]
00816a38  10 50 8d e5                                      str r5, [sp, #0x10]
00816a3c  9f ff ff eb                                      bl #0x8168c0
00816a40  04 50 a0 e1                                      mov r5, r4
00816a44  05 00 5b e1                                      cmp fp, r5
00816a48  ba ff ff 1a                                      bne #0x816938
00816a4c  1c d0 8d e2                                      add sp, sp, #0x1c
00816a50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00816a54  06 30 a0 e1                                      mov r3, r6
00816a58  03 00 56 e1                                      cmp r6, r3
00816a5c  d6 ff ff 1a                                      bne #0x8169bc
00816a60  18 10 8d e2                                      add r1, sp, #0x18
00816a64  04 50 21 e5                                      str r5, [r1, #-4]!
00816a68  0b 00 a0 e1                                      mov r0, fp
00816a6c  93 ff ff eb                                      bl #0x8168c0
00816a70  f5 ff ff ea                                      b #0x816a4c
00816a74  04 30 95 e5                                      ldr r3, [r5, #4]
00816a78  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00816a7c  02 00 55 e1                                      cmp r5, r2
00816a80  05 40 a0 11                                      movne r4, r5
00816a84  00 20 a0 13                                      movne r2, #0
00816a88  05 00 00 1a                                      bne #0x816aa4
00816a8c  03 40 a0 e1                                      mov r4, r3
00816a90  04 30 93 e5                                      ldr r3, [r3, #4]
00816a94  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00816a98  04 00 52 e1                                      cmp r2, r4
00816a9c  fa ff ff 0a                                      beq #0x816a8c
00816aa0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00816aa4  02 00 53 e1                                      cmp r3, r2
00816aa8  03 40 a0 11                                      movne r4, r3
00816aac  a9 ff ff ea                                      b #0x816958
; mapping-symbol data/literal pool
00816ab0  7c e1 17 00 c8 28 00 00                          .byte 0x7c, 0xe1, 0x17, 0x00, 0xc8, 0x28, 0x00, 0x00

; FUNCTION 0x00816ab8, declared_size=364, range_size=364, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManagerD2Ev
; demangled: CPacketManager::~CPacketManager()
; decoder-mode: arm
00816ab8  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
00816abc  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00816ac0  70 40 2d e9                                      push {r4, r5, r6, lr}
00816ac4  03 30 8f e0                                      add r3, pc, r3
00816ac8  02 20 93 e7                                      ldr r2, [r3, r2]
00816acc  00 40 a0 e1                                      mov r4, r0
00816ad0  00 50 a0 e3                                      mov r5, #0
00816ad4  08 20 82 e2                                      add r2, r2, #8
00816ad8  00 20 84 e5                                      str r2, [r4]
00816adc  06 00 a0 e3                                      mov r0, #6
00816ae0  15 96 ff eb                                      bl #0x7fc33c
00816ae4  f9 3f 00 eb                                      bl #0x826ad0
00816ae8  04 50 c4 e5                                      strb r5, [r4, #4]
00816aec  f4 00 84 e2                                      add r0, r4, #0xf4
00816af0  96 fd ff eb                                      bl #0x816150
00816af4  d0 00 84 e2                                      add r0, r4, #0xd0
00816af8  94 fd ff eb                                      bl #0x816150
00816afc  ac 00 84 e2                                      add r0, r4, #0xac
00816b00  92 fd ff eb                                      bl #0x816150
00816b04  88 00 84 e2                                      add r0, r4, #0x88
00816b08  90 fd ff eb                                      bl #0x816150
00816b0c  80 30 94 e5                                      ldr r3, [r4, #0x80]
00816b10  05 00 53 e1                                      cmp r3, r5
00816b14  35 00 00 1a                                      bne #0x816bf0
00816b18  64 00 94 e5                                      ldr r0, [r4, #0x64]
00816b1c  64 30 84 e2                                      add r3, r4, #0x64
00816b20  00 00 50 e3                                      cmp r0, #0
00816b24  05 00 00 0a                                      beq #0x816b40
00816b28  08 10 93 e5                                      ldr r1, [r3, #8]
00816b2c  01 10 60 e0                                      rsb r1, r0, r1
00816b30  03 10 c1 e3                                      bic r1, r1, #3
00816b34  80 00 51 e3                                      cmp r1, #0x80
00816b38  35 00 00 8a                                      bhi #0x816c14
00816b3c  fd 9d 02 eb                                      bl #0x8be338
00816b40  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00816b44  00 00 53 e3                                      cmp r3, #0
00816b48  1e 00 00 1a                                      bne #0x816bc8
00816b4c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00816b50  00 00 53 e3                                      cmp r3, #0
00816b54  11 00 00 1a                                      bne #0x816ba0
00816b58  24 00 84 e2                                      add r0, r4, #0x24
00816b5c  ad fd ff eb                                      bl #0x816218
00816b60  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00816b64  00 00 53 e3                                      cmp r3, #0
00816b68  08 00 00 0a                                      beq #0x816b90
00816b6c  0c 50 84 e2                                      add r5, r4, #0xc
00816b70  05 00 a0 e1                                      mov r0, r5
00816b74  10 10 94 e5                                      ldr r1, [r4, #0x10]
00816b78  01 ff ff eb                                      bl #0x816784
00816b7c  00 30 a0 e3                                      mov r3, #0
00816b80  18 50 84 e5                                      str r5, [r4, #0x18]
00816b84  1c 30 84 e5                                      str r3, [r4, #0x1c]
00816b88  14 50 84 e5                                      str r5, [r4, #0x14]
00816b8c  10 30 84 e5                                      str r3, [r4, #0x10]
00816b90  08 00 84 e2                                      add r0, r4, #8
00816b94  f5 dd ff eb                                      bl #0x80e370
00816b98  04 00 a0 e1                                      mov r0, r4
00816b9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00816ba0  34 50 84 e2                                      add r5, r4, #0x34
00816ba4  05 00 a0 e1                                      mov r0, r5
00816ba8  38 10 94 e5                                      ldr r1, [r4, #0x38]
00816bac  ae fd ff eb                                      bl #0x81626c
00816bb0  00 30 a0 e3                                      mov r3, #0
00816bb4  40 50 84 e5                                      str r5, [r4, #0x40]
00816bb8  44 30 84 e5                                      str r3, [r4, #0x44]
00816bbc  3c 50 84 e5                                      str r5, [r4, #0x3c]
00816bc0  38 30 84 e5                                      str r3, [r4, #0x38]
00816bc4  e3 ff ff ea                                      b #0x816b58
00816bc8  4c 50 84 e2                                      add r5, r4, #0x4c
00816bcc  05 00 a0 e1                                      mov r0, r5
00816bd0  50 10 94 e5                                      ldr r1, [r4, #0x50]
00816bd4  c9 ad ff eb                                      bl #0x802300
00816bd8  00 30 a0 e3                                      mov r3, #0
00816bdc  58 50 84 e5                                      str r5, [r4, #0x58]
00816be0  5c 30 84 e5                                      str r3, [r4, #0x5c]
00816be4  54 50 84 e5                                      str r5, [r4, #0x54]
00816be8  50 30 84 e5                                      str r3, [r4, #0x50]
00816bec  d6 ff ff ea                                      b #0x816b4c
00816bf0  70 60 84 e2                                      add r6, r4, #0x70
00816bf4  06 00 a0 e1                                      mov r0, r6
00816bf8  74 10 94 e5                                      ldr r1, [r4, #0x74]
00816bfc  78 43 ee eb                                      bl #0x3a79e4
00816c00  7c 60 84 e5                                      str r6, [r4, #0x7c]
00816c04  80 50 84 e5                                      str r5, [r4, #0x80]
00816c08  78 60 84 e5                                      str r6, [r4, #0x78]
00816c0c  74 50 84 e5                                      str r5, [r4, #0x74]
00816c10  c0 ff ff ea                                      b #0x816b18
00816c14  09 e6 eb eb                                      bl #0x310440
00816c18  c8 ff ff ea                                      b #0x816b40
; mapping-symbol data/literal pool
00816c1c  cc df 17 00 dc 38 00 00                          .byte 0xcc, 0xdf, 0x17, 0x00, 0xdc, 0x38, 0x00, 0x00

; FUNCTION 0x00816c68, declared_size=64, range_size=64, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager13GetNextPacketEv
; demangled: CPacketManager::GetNextPacket()
; decoder-mode: arm
00816c68  30 40 2d e9                                      push {r4, r5, lr}
00816c6c  01 50 a0 e1                                      mov r5, r1
00816c70  24 10 91 e5                                      ldr r1, [r1, #0x24]
00816c74  14 d0 4d e2                                      sub sp, sp, #0x14
00816c78  00 40 a0 e1                                      mov r4, r0
00816c7c  08 10 81 e2                                      add r1, r1, #8
00816c80  9b e0 ff eb                                      bl #0x80eef4
00816c84  05 10 a0 e1                                      mov r1, r5
00816c88  24 30 b1 e5                                      ldr r3, [r1, #0x24]!
00816c8c  0d 00 a0 e1                                      mov r0, sp
00816c90  0c 20 8d e2                                      add r2, sp, #0xc
00816c94  0c 30 8d e5                                      str r3, [sp, #0xc]
00816c98  e1 ff ff eb                                      bl #0x816c24
00816c9c  04 00 a0 e1                                      mov r0, r4
00816ca0  14 d0 8d e2                                      add sp, sp, #0x14
00816ca4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00816ca8, declared_size=516, range_size=516, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager29ProcessPacketAcknowledgementsERNS_16tPacketMgrHeaderE
; demangled: CPacketManager::ProcessPacketAcknowledgements(CPacketManager::tPacketMgrHeader&)
; decoder-mode: arm
00816ca8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00816cac  08 50 91 e5                                      ldr r5, [r1, #8]
00816cb0  1c d0 4d e2                                      sub sp, sp, #0x1c
00816cb4  01 90 a0 e1                                      mov sb, r1
00816cb8  00 00 55 e3                                      cmp r5, #0
00816cbc  00 60 a0 e1                                      mov r6, r0
00816cc0  04 70 91 e5                                      ldr r7, [r1, #4]
00816cc4  44 00 00 0a                                      beq #0x816ddc
00816cc8  6c 30 80 e2                                      add r3, r0, #0x6c
00816ccc  08 30 8d e5                                      str r3, [sp, #8]
00816cd0  10 30 8d e2                                      add r3, sp, #0x10
00816cd4  4c 80 80 e2                                      add r8, r0, #0x4c
00816cd8  14 b0 8d e2                                      add fp, sp, #0x14
00816cdc  0c 30 8d e5                                      str r3, [sp, #0xc]
00816ce0  01 00 15 e3                                      tst r5, #1
00816ce4  35 00 00 0a                                      beq #0x816dc0
00816ce8  50 30 96 e5                                      ldr r3, [r6, #0x50]
00816cec  10 40 99 e5                                      ldr r4, [sb, #0x10]
00816cf0  00 00 53 e3                                      cmp r3, #0
00816cf4  04 48 87 e0                                      add r4, r7, r4, lsl #16
00816cf8  35 00 00 0a                                      beq #0x816dd4
00816cfc  08 10 a0 e1                                      mov r1, r8
00816d00  00 00 00 ea                                      b #0x816d08
00816d04  02 30 a0 e1                                      mov r3, r2
00816d08  10 20 93 e5                                      ldr r2, [r3, #0x10]
00816d0c  02 00 54 e1                                      cmp r4, r2
00816d10  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
00816d14  08 20 93 95                                      ldrls r2, [r3, #8]
00816d18  01 30 a0 81                                      movhi r3, r1
00816d1c  03 10 a0 e1                                      mov r1, r3
00816d20  00 00 52 e3                                      cmp r2, #0
00816d24  f6 ff ff 1a                                      bne #0x816d04
00816d28  03 00 58 e1                                      cmp r8, r3
00816d2c  23 00 00 0a                                      beq #0x816dc0
00816d30  10 20 93 e5                                      ldr r2, [r3, #0x10]
00816d34  02 00 54 e1                                      cmp r4, r2
00816d38  25 00 00 3a                                      blo #0x816dd4
00816d3c  03 00 58 e1                                      cmp r8, r3
00816d40  1e 00 00 0a                                      beq #0x816dc0
00816d44  68 a0 96 e5                                      ldr sl, [r6, #0x68]
00816d48  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
00816d4c  03 00 5a e1                                      cmp sl, r3
00816d50  23 00 00 0a                                      beq #0x816de4
00816d54  00 40 8a e5                                      str r4, [sl]
00816d58  68 30 96 e5                                      ldr r3, [r6, #0x68]
00816d5c  04 30 83 e2                                      add r3, r3, #4
00816d60  68 30 86 e5                                      str r3, [r6, #0x68]
00816d64  50 30 96 e5                                      ldr r3, [r6, #0x50]
00816d68  00 00 53 e3                                      cmp r3, #0
00816d6c  13 00 00 0a                                      beq #0x816dc0
00816d70  08 10 a0 e1                                      mov r1, r8
00816d74  00 00 00 ea                                      b #0x816d7c
00816d78  02 30 a0 e1                                      mov r3, r2
00816d7c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00816d80  02 00 54 e1                                      cmp r4, r2
00816d84  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
00816d88  08 20 93 95                                      ldrls r2, [r3, #8]
00816d8c  01 30 a0 81                                      movhi r3, r1
00816d90  03 10 a0 e1                                      mov r1, r3
00816d94  00 00 52 e3                                      cmp r2, #0
00816d98  f6 ff ff 1a                                      bne #0x816d78
00816d9c  03 00 58 e1                                      cmp r8, r3
00816da0  06 00 00 0a                                      beq #0x816dc0
00816da4  10 20 93 e5                                      ldr r2, [r3, #0x10]
00816da8  02 00 54 e1                                      cmp r4, r2
00816dac  03 00 00 3a                                      blo #0x816dc0
00816db0  08 00 a0 e1                                      mov r0, r8
00816db4  0b 10 a0 e1                                      mov r1, fp
00816db8  14 30 8d e5                                      str r3, [sp, #0x14]
00816dbc  bf fe ff eb                                      bl #0x8168c0
00816dc0  a5 50 b0 e1                                      lsrs r5, r5, #1
00816dc4  04 00 00 0a                                      beq #0x816ddc
00816dc8  01 70 47 e2                                      sub r7, r7, #1
00816dcc  77 70 ff e6                                      uxth r7, r7
00816dd0  c2 ff ff ea                                      b #0x816ce0
00816dd4  08 30 a0 e1                                      mov r3, r8
00816dd8  d7 ff ff ea                                      b #0x816d3c
00816ddc  1c d0 8d e2                                      add sp, sp, #0x1c
00816de0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00816de4  64 20 96 e5                                      ldr r2, [r6, #0x64]
00816de8  0a 20 62 e0                                      rsb r2, r2, sl
00816dec  42 21 a0 e1                                      asr r2, r2, #2
00816df0  01 00 52 e3                                      cmp r2, #1
00816df4  02 30 82 20                                      addhs r3, r2, r2
00816df8  01 30 82 32                                      addlo r3, r2, #1
00816dfc  07 01 73 e3                                      cmn r3, #0xc0000001
00816e00  1d 00 00 8a                                      bhi #0x816e7c
00816e04  03 00 52 e1                                      cmp r2, r3
00816e08  1b 00 00 8a                                      bhi #0x816e7c
00816e0c  03 10 a0 e1                                      mov r1, r3
00816e10  08 00 9d e5                                      ldr r0, [sp, #8]
00816e14  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00816e18  10 30 8d e5                                      str r3, [sp, #0x10]
00816e1c  b7 36 f6 eb                                      bl #0x5a4900
00816e20  64 10 96 e5                                      ldr r1, [r6, #0x64]
00816e24  00 30 a0 e1                                      mov r3, r0
00816e28  01 a0 5a e0                                      subs sl, sl, r1
00816e2c  00 a0 a0 01                                      moveq sl, r0
00816e30  13 00 00 1a                                      bne #0x816e84
00816e34  04 40 8a e4                                      str r4, [sl], #4
00816e38  64 00 96 e5                                      ldr r0, [r6, #0x64]
00816e3c  6c 20 96 e5                                      ldr r2, [r6, #0x6c]
00816e40  00 00 50 e3                                      cmp r0, #0
00816e44  06 00 00 0a                                      beq #0x816e64
00816e48  02 20 60 e0                                      rsb r2, r0, r2
00816e4c  03 10 c2 e3                                      bic r1, r2, #3
00816e50  80 00 51 e3                                      cmp r1, #0x80
00816e54  10 00 00 8a                                      bhi #0x816e9c
00816e58  04 30 8d e5                                      str r3, [sp, #4]
00816e5c  35 9d 02 eb                                      bl #0x8be338
00816e60  04 30 9d e5                                      ldr r3, [sp, #4]
00816e64  10 20 9d e5                                      ldr r2, [sp, #0x10]
00816e68  64 30 86 e5                                      str r3, [r6, #0x64]
00816e6c  68 a0 86 e5                                      str sl, [r6, #0x68]
00816e70  02 31 83 e0                                      add r3, r3, r2, lsl #2
00816e74  6c 30 86 e5                                      str r3, [r6, #0x6c]
00816e78  b9 ff ff ea                                      b #0x816d64
00816e7c  03 31 e0 e3                                      mvn r3, #0xc0000000
00816e80  e1 ff ff ea                                      b #0x816e0c
00816e84  0a 20 a0 e1                                      mov r2, sl
00816e88  04 00 8d e5                                      str r0, [sp, #4]
00816e8c  29 dc eb eb                                      bl #0x30df38
00816e90  04 30 9d e5                                      ldr r3, [sp, #4]
00816e94  0a a0 80 e0                                      add sl, r0, sl
00816e98  e5 ff ff ea                                      b #0x816e34
00816e9c  04 30 8d e5                                      str r3, [sp, #4]
00816ea0  66 e5 eb eb                                      bl #0x310440
00816ea4  04 30 9d e5                                      ldr r3, [sp, #4]
00816ea8  ed ff ff ea                                      b #0x816e64

; FUNCTION 0x00816eac, declared_size=416, range_size=416, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager14ReceivePacketsEv
; demangled: CPacketManager::ReceivePackets()
; decoder-mode: arm
00816eac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00816eb0  08 30 80 e2                                      add r3, r0, #8
00816eb4  44 d0 4d e2                                      sub sp, sp, #0x44
00816eb8  00 50 a0 e1                                      mov r5, r0
00816ebc  03 00 a0 e1                                      mov r0, r3
00816ec0  04 30 8d e5                                      str r3, [sp, #4]
00816ec4  28 dd ff eb                                      bl #0x80e36c
00816ec8  74 31 9f e5                                      ldr r3, [pc, #0x174]
00816ecc  05 00 a0 e1                                      mov r0, r5
00816ed0  70 b1 9f e5                                      ldr fp, [pc, #0x170]
00816ed4  00 30 8d e5                                      str r3, [sp]
00816ed8  26 f9 ff eb                                      bl #0x815378
00816edc  28 60 8d e2                                      add r6, sp, #0x28
00816ee0  00 00 50 e3                                      cmp r0, #0
00816ee4  0b b0 8f e0                                      add fp, pc, fp
00816ee8  34 a0 85 e2                                      add sl, r5, #0x34
00816eec  08 40 8d e2                                      add r4, sp, #8
00816ef0  10 90 86 e2                                      add sb, r6, #0x10
00816ef4  49 00 00 0a                                      beq #0x817020
00816ef8  04 00 a0 e1                                      mov r0, r4
00816efc  05 10 a0 e1                                      mov r1, r5
00816f00  58 ff ff eb                                      bl #0x816c68
00816f04  05 10 a0 e1                                      mov r1, r5
00816f08  04 20 a0 e1                                      mov r2, r4
00816f0c  06 00 a0 e1                                      mov r0, r6
00816f10  3a f9 ff eb                                      bl #0x815400
00816f14  96 93 ff eb                                      bl #0x7fbd74
00816f18  18 10 9d e5                                      ldr r1, [sp, #0x18]
00816f1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00816f20  02 20 a0 e3                                      mov r2, #2
00816f24  07 c0 11 e2                                      ands ip, r1, #7
00816f28  01 c0 a0 13                                      movne ip, #1
00816f2c  a3 c1 4c e0                                      sub ip, ip, r3, lsr #3
00816f30  07 30 13 e2                                      ands r3, r3, #7
00816f34  01 30 a0 13                                      movne r3, #1
00816f38  a1 11 8c e0                                      add r1, ip, r1, lsr #3
00816f3c  01 30 63 e0                                      rsb r3, r3, r1
00816f40  38 10 9d e5                                      ldr r1, [sp, #0x38]
00816f44  52 94 ff eb                                      bl #0x7fc094
00816f48  09 10 a0 e1                                      mov r1, sb
00816f4c  0a 00 a0 e1                                      mov r0, sl
00816f50  29 fb ff eb                                      bl #0x815bfc
00816f54  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
00816f58  06 10 a0 e1                                      mov r1, r6
00816f5c  0c 30 c0 e5                                      strb r3, [r0, #0xc]
00816f60  05 00 a0 e1                                      mov r0, r5
00816f64  85 fb ff eb                                      bl #0x815d80
00816f68  00 00 50 e3                                      cmp r0, #0
00816f6c  25 00 00 0a                                      beq #0x817008
00816f70  05 00 a0 e1                                      mov r0, r5
00816f74  06 10 a0 e1                                      mov r1, r6
00816f78  4a ff ff eb                                      bl #0x816ca8
00816f7c  00 30 9d e5                                      ldr r3, [sp]
00816f80  03 70 9b e7                                      ldr r7, [fp, r3]
00816f84  ba 8f 87 e2                                      add r8, r7, #0x2e8
00816f88  08 70 87 e2                                      add r7, r7, #8
00816f8c  02 00 00 ea                                      b #0x816f9c
00816f90  5c 70 87 e2                                      add r7, r7, #0x5c
00816f94  08 00 57 e1                                      cmp r7, r8
00816f98  17 00 00 0a                                      beq #0x816ffc
00816f9c  01 10 a0 e3                                      mov r1, #1
00816fa0  04 00 a0 e1                                      mov r0, r4
00816fa4  6e dd ff eb                                      bl #0x80e564
00816fa8  00 00 50 e3                                      cmp r0, #0
00816fac  f7 ff ff 0a                                      beq #0x816f90
00816fb0  20 10 a0 e3                                      mov r1, #0x20
00816fb4  04 00 a0 e1                                      mov r0, r4
00816fb8  9c dd ff eb                                      bl #0x80e630
00816fbc  08 30 57 e5                                      ldrb r3, [r7, #-8]
00816fc0  04 20 a0 e1                                      mov r2, r4
00816fc4  00 00 53 e3                                      cmp r3, #0
00816fc8  17 00 00 0a                                      beq #0x81702c
00816fcc  00 30 97 e5                                      ldr r3, [r7]
00816fd0  00 00 53 e3                                      cmp r3, #0
00816fd4  14 00 00 0a                                      beq #0x81702c
00816fd8  28 10 9d e5                                      ldr r1, [sp, #0x28]
00816fdc  38 00 9d e5                                      ldr r0, [sp, #0x38]
00816fe0  33 ff 2f e1                                      blx r3
00816fe4  5c 70 87 e2                                      add r7, r7, #0x5c
00816fe8  04 00 a0 e1                                      mov r0, r4
00816fec  10 10 a0 e3                                      mov r1, #0x10
00816ff0  8e dd ff eb                                      bl #0x80e630
00816ff4  08 00 57 e1                                      cmp r7, r8
00816ff8  e7 ff ff 1a                                      bne #0x816f9c
00816ffc  05 00 a0 e1                                      mov r0, r5
00817000  06 10 a0 e1                                      mov r1, r6
00817004  28 fb ff eb                                      bl #0x815cac
00817008  04 00 a0 e1                                      mov r0, r4
0081700c  df dd ff eb                                      bl #0x80e790
00817010  05 00 a0 e1                                      mov r0, r5
00817014  d7 f8 ff eb                                      bl #0x815378
00817018  00 00 50 e3                                      cmp r0, #0
0081701c  b5 ff ff 1a                                      bne #0x816ef8
00817020  04 00 9d e5                                      ldr r0, [sp, #4]
00817024  cf dc ff eb                                      bl #0x80e368
00817028  03 00 00 ea                                      b #0x81703c
0081702c  04 00 a0 e1                                      mov r0, r4
00817030  d6 dd ff eb                                      bl #0x80e790
00817034  04 00 9d e5                                      ldr r0, [sp, #4]
00817038  ca dc ff eb                                      bl #0x80e368
0081703c  44 d0 8d e2                                      add sp, sp, #0x44
00817040  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00817044  c8 28 00 00 ac db 17 00                          .byte 0xc8, 0x28, 0x00, 0x00, 0xac, 0xdb, 0x17, 0x00

; FUNCTION 0x0081704c, declared_size=364, range_size=364, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManagerD1Ev
; demangled: CPacketManager::~CPacketManager()
; decoder-mode: arm
0081704c  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
00817050  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00817054  70 40 2d e9                                      push {r4, r5, r6, lr}
00817058  03 30 8f e0                                      add r3, pc, r3
0081705c  02 20 93 e7                                      ldr r2, [r3, r2]
00817060  00 40 a0 e1                                      mov r4, r0
00817064  00 50 a0 e3                                      mov r5, #0
00817068  08 20 82 e2                                      add r2, r2, #8
0081706c  00 20 84 e5                                      str r2, [r4]
00817070  06 00 a0 e3                                      mov r0, #6
00817074  b0 94 ff eb                                      bl #0x7fc33c
00817078  94 3e 00 eb                                      bl #0x826ad0
0081707c  04 50 c4 e5                                      strb r5, [r4, #4]
00817080  f4 00 84 e2                                      add r0, r4, #0xf4
00817084  31 fc ff eb                                      bl #0x816150
00817088  d0 00 84 e2                                      add r0, r4, #0xd0
0081708c  2f fc ff eb                                      bl #0x816150
00817090  ac 00 84 e2                                      add r0, r4, #0xac
00817094  2d fc ff eb                                      bl #0x816150
00817098  88 00 84 e2                                      add r0, r4, #0x88
0081709c  2b fc ff eb                                      bl #0x816150
008170a0  80 30 94 e5                                      ldr r3, [r4, #0x80]
008170a4  05 00 53 e1                                      cmp r3, r5
008170a8  35 00 00 1a                                      bne #0x817184
008170ac  64 00 94 e5                                      ldr r0, [r4, #0x64]
008170b0  64 30 84 e2                                      add r3, r4, #0x64
008170b4  00 00 50 e3                                      cmp r0, #0
008170b8  05 00 00 0a                                      beq #0x8170d4
008170bc  08 10 93 e5                                      ldr r1, [r3, #8]
008170c0  01 10 60 e0                                      rsb r1, r0, r1
008170c4  03 10 c1 e3                                      bic r1, r1, #3
008170c8  80 00 51 e3                                      cmp r1, #0x80
008170cc  35 00 00 8a                                      bhi #0x8171a8
008170d0  98 9c 02 eb                                      bl #0x8be338
008170d4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008170d8  00 00 53 e3                                      cmp r3, #0
008170dc  1e 00 00 1a                                      bne #0x81715c
008170e0  44 30 94 e5                                      ldr r3, [r4, #0x44]
008170e4  00 00 53 e3                                      cmp r3, #0
008170e8  11 00 00 1a                                      bne #0x817134
008170ec  24 00 84 e2                                      add r0, r4, #0x24
008170f0  48 fc ff eb                                      bl #0x816218
008170f4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
008170f8  00 00 53 e3                                      cmp r3, #0
008170fc  08 00 00 0a                                      beq #0x817124
00817100  0c 50 84 e2                                      add r5, r4, #0xc
00817104  05 00 a0 e1                                      mov r0, r5
00817108  10 10 94 e5                                      ldr r1, [r4, #0x10]
0081710c  9c fd ff eb                                      bl #0x816784
00817110  00 30 a0 e3                                      mov r3, #0
00817114  18 50 84 e5                                      str r5, [r4, #0x18]
00817118  1c 30 84 e5                                      str r3, [r4, #0x1c]
0081711c  14 50 84 e5                                      str r5, [r4, #0x14]
00817120  10 30 84 e5                                      str r3, [r4, #0x10]
00817124  08 00 84 e2                                      add r0, r4, #8
00817128  90 dc ff eb                                      bl #0x80e370
0081712c  04 00 a0 e1                                      mov r0, r4
00817130  70 80 bd e8                                      pop {r4, r5, r6, pc}
00817134  34 50 84 e2                                      add r5, r4, #0x34
00817138  05 00 a0 e1                                      mov r0, r5
0081713c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00817140  49 fc ff eb                                      bl #0x81626c
00817144  00 30 a0 e3                                      mov r3, #0
00817148  40 50 84 e5                                      str r5, [r4, #0x40]
0081714c  44 30 84 e5                                      str r3, [r4, #0x44]
00817150  3c 50 84 e5                                      str r5, [r4, #0x3c]
00817154  38 30 84 e5                                      str r3, [r4, #0x38]
00817158  e3 ff ff ea                                      b #0x8170ec
0081715c  4c 50 84 e2                                      add r5, r4, #0x4c
00817160  05 00 a0 e1                                      mov r0, r5
00817164  50 10 94 e5                                      ldr r1, [r4, #0x50]
00817168  64 ac ff eb                                      bl #0x802300
0081716c  00 30 a0 e3                                      mov r3, #0
00817170  58 50 84 e5                                      str r5, [r4, #0x58]
00817174  5c 30 84 e5                                      str r3, [r4, #0x5c]
00817178  54 50 84 e5                                      str r5, [r4, #0x54]
0081717c  50 30 84 e5                                      str r3, [r4, #0x50]
00817180  d6 ff ff ea                                      b #0x8170e0
00817184  70 60 84 e2                                      add r6, r4, #0x70
00817188  06 00 a0 e1                                      mov r0, r6
0081718c  74 10 94 e5                                      ldr r1, [r4, #0x74]
00817190  13 42 ee eb                                      bl #0x3a79e4
00817194  7c 60 84 e5                                      str r6, [r4, #0x7c]
00817198  80 50 84 e5                                      str r5, [r4, #0x80]
0081719c  78 60 84 e5                                      str r6, [r4, #0x78]
008171a0  74 50 84 e5                                      str r5, [r4, #0x74]
008171a4  c0 ff ff ea                                      b #0x8170ac
008171a8  a4 e4 eb eb                                      bl #0x310440
008171ac  c8 ff ff ea                                      b #0x8170d4
; mapping-symbol data/literal pool
008171b0  38 da 17 00 dc 38 00 00                          .byte 0x38, 0xda, 0x17, 0x00, 0xdc, 0x38, 0x00, 0x00

; FUNCTION 0x008171b8, declared_size=28, range_size=28, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManagerD0Ev
; demangled: CPacketManager::~CPacketManager()
; decoder-mode: arm
008171b8  10 40 2d e9                                      push {r4, lr}
008171bc  00 40 a0 e1                                      mov r4, r0
008171c0  a1 ff ff eb                                      bl #0x81704c
008171c4  04 00 a0 e1                                      mov r0, r4
008171c8  9c e4 eb eb                                      bl #0x310440
008171cc  04 00 a0 e1                                      mov r0, r4
008171d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00817814, declared_size=444, range_size=444, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager10SendPacketEi
; demangled: CPacketManager::SendPacket(int)
; decoder-mode: arm
00817814  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00817818  48 d0 4d e2                                      sub sp, sp, #0x48
0081781c  0c 10 8d e5                                      str r1, [sp, #0xc]
00817820  00 40 a0 e1                                      mov r4, r0
00817824  52 91 ff eb                                      bl #0x7fbd74
00817828  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0081782c  b0 93 ff eb                                      bl #0x7fc6f4
00817830  00 00 50 e3                                      cmp r0, #0
00817834  01 00 00 1a                                      bne #0x817840
00817838  48 d0 8d e2                                      add sp, sp, #0x48
0081783c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00817840  00 30 e0 e3                                      mvn r3, #0
00817844  48 50 8d e2                                      add r5, sp, #0x48
00817848  34 30 25 e5                                      str r3, [r5, #-0x34]!
0081784c  04 80 85 e2                                      add r8, r5, #4
00817850  f8 1f 00 e3                                      movw r1, #0xff8
00817854  08 00 a0 e1                                      mov r0, r8
00817858  2a dc ff eb                                      bl #0x80e908
0081785c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00817860  08 20 a0 e1                                      mov r2, r8
00817864  04 00 a0 e1                                      mov r0, r4
00817868  03 10 a0 e1                                      mov r1, r3
0081786c  14 30 8d e5                                      str r3, [sp, #0x14]
00817870  66 f9 ff eb                                      bl #0x815e10
00817874  28 90 9d e5                                      ldr sb, [sp, #0x28]
00817878  48 70 8d e2                                      add r7, sp, #0x48
0081787c  00 20 a0 e1                                      mov r2, r0
00817880  08 30 a0 e1                                      mov r3, r8
00817884  3c 10 37 e5                                      ldr r1, [r7, #-0x3c]!
00817888  07 80 19 e2                                      ands r8, sb, #7
0081788c  00 60 a0 e1                                      mov r6, r0
00817890  04 00 a0 e1                                      mov r0, r4
00817894  01 80 a0 13                                      movne r8, #1
00817898  8a f9 ff eb                                      bl #0x815ec8
0081789c  bc 97 ff eb                                      bl #0x7fd794
008178a0  00 30 90 e5                                      ldr r3, [r0]
008178a4  0f e0 a0 e1                                      mov lr, pc
008178a8  00 f0 93 e5                                      ldr pc, [r3]
008178ac  07 10 a0 e1                                      mov r1, r7
008178b0  00 a0 a0 e1                                      mov sl, r0
008178b4  34 00 84 e2                                      add r0, r4, #0x34
008178b8  cf f8 ff eb                                      bl #0x815bfc
008178bc  00 60 80 e5                                      str r6, [r0]
008178c0  50 c0 94 e5                                      ldr ip, [r4, #0x50]
008178c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008178c8  4c 10 84 e2                                      add r1, r4, #0x4c
008178cc  00 00 5c e3                                      cmp ip, #0
008178d0  a9 91 a0 e1                                      lsr sb, sb, #3
008178d4  03 68 86 e0                                      add r6, r6, r3, lsl #16
008178d8  01 c0 a0 01                                      moveq ip, r1
008178dc  0a 00 00 0a                                      beq #0x81790c
008178e0  01 20 a0 e1                                      mov r2, r1
008178e4  00 00 00 ea                                      b #0x8178ec
008178e8  03 c0 a0 e1                                      mov ip, r3
008178ec  10 30 9c e5                                      ldr r3, [ip, #0x10]
008178f0  03 00 56 e1                                      cmp r6, r3
008178f4  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
008178f8  08 30 9c 95                                      ldrls r3, [ip, #8]
008178fc  02 c0 a0 81                                      movhi ip, r2
00817900  0c 20 a0 e1                                      mov r2, ip
00817904  00 00 53 e3                                      cmp r3, #0
00817908  f6 ff ff 1a                                      bne #0x8178e8
0081790c  0c 00 51 e1                                      cmp r1, ip
00817910  19 00 00 0a                                      beq #0x81797c
00817914  10 20 9c e5                                      ldr r2, [ip, #0x10]
00817918  0c 30 a0 e1                                      mov r3, ip
0081791c  02 00 56 e1                                      cmp r6, r2
00817920  15 00 00 3a                                      blo #0x81797c
00817924  14 a0 83 e5                                      str sl, [r3, #0x14]
00817928  11 91 ff eb                                      bl #0x7fbd74
0081792c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00817930  03 20 a0 e3                                      mov r2, #3
00817934  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00817938  07 c0 13 e2                                      ands ip, r3, #7
0081793c  01 c0 a0 13                                      movne ip, #1
00817940  0c 90 69 e0                                      rsb sb, sb, ip
00817944  33 32 89 e0                                      add r3, sb, r3, lsr r2
00817948  03 30 68 e0                                      rsb r3, r8, r3
0081794c  d0 91 ff eb                                      bl #0x7fc094
00817950  28 20 9d e5                                      ldr r2, [sp, #0x28]
00817954  78 15 00 e3                                      movw r1, #0x578
00817958  07 30 12 e2                                      ands r3, r2, #7
0081795c  01 30 a0 13                                      movne r3, #1
00817960  a2 31 83 e0                                      add r3, r3, r2, lsr #3
00817964  01 00 53 e1                                      cmp r3, r1
00817968  0d 00 00 9a                                      bls #0x8179a4
0081796c  04 00 85 e2                                      add r0, r5, #4
00817970  86 db ff eb                                      bl #0x80e790
00817974  01 00 a0 e3                                      mov r0, #1
00817978  ae ff ff ea                                      b #0x817838
0081797c  38 30 8d e2                                      add r3, sp, #0x38
00817980  00 e0 a0 e3                                      mov lr, #0
00817984  40 00 8d e2                                      add r0, sp, #0x40
00817988  44 20 8d e2                                      add r2, sp, #0x44
0081798c  38 60 8d e5                                      str r6, [sp, #0x38]
00817990  3c e0 8d e5                                      str lr, [sp, #0x3c]
00817994  44 c0 8d e5                                      str ip, [sp, #0x44]
00817998  c0 fe ff eb                                      bl #0x8174a0
0081799c  40 30 9d e5                                      ldr r3, [sp, #0x40]
008179a0  df ff ff ea                                      b #0x817924
008179a4  f2 90 ff eb                                      bl #0x7fbd74
008179a8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
008179ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
008179b0  06 10 a0 e3                                      mov r1, #6
008179b4  07 30 1c e2                                      ands r3, ip, #7
008179b8  01 30 a0 13                                      movne r3, #1
008179bc  ac c1 83 e0                                      add ip, r3, ip, lsr #3
008179c0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
008179c4  00 c0 8d e5                                      str ip, [sp]
008179c8  0a 93 ff eb                                      bl #0x7fc5f8
008179cc  e6 ff ff ea                                      b #0x81796c

; FUNCTION 0x008179d0, declared_size=620, range_size=620, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager11SendPacketsEv
; demangled: CPacketManager::SendPackets()
; decoder-mode: arm
008179d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008179d4  04 30 d0 e5                                      ldrb r3, [r0, #4]
008179d8  00 40 a0 e1                                      mov r4, r0
008179dc  18 d0 4d e2                                      sub sp, sp, #0x18
008179e0  00 00 53 e3                                      cmp r3, #0
008179e4  00 00 e0 03                                      mvneq r0, #0
008179e8  01 00 00 1a                                      bne #0x8179f4
008179ec  18 d0 8d e2                                      add sp, sp, #0x18
008179f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008179f4  c2 f6 ff eb                                      bl #0x815504
008179f8  04 00 a0 e1                                      mov r0, r4
008179fc  be fb ff eb                                      bl #0x8168fc
00817a00  63 97 ff eb                                      bl #0x7fd794
00817a04  30 30 d4 e5                                      ldrb r3, [r4, #0x30]
00817a08  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
00817a0c  00 00 53 e3                                      cmp r3, #0
00817a10  04 00 00 1a                                      bne #0x817a28
00817a14  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00817a18  05 20 62 e0                                      rsb r2, r2, r5
00817a1c  32 00 52 e3                                      cmp r2, #0x32
00817a20  30 30 c4 95                                      strbls r3, [r4, #0x30]
00817a24  67 00 00 9a                                      bls #0x817bc8
00817a28  d1 90 ff eb                                      bl #0x7fbd74
00817a2c  00 20 a0 e3                                      mov r2, #0
00817a30  00 10 a0 e1                                      mov r1, r0
00817a34  04 00 8d e2                                      add r0, sp, #4
00817a38  11 96 ff eb                                      bl #0x7fd284
00817a3c  04 30 9d e5                                      ldr r3, [sp, #4]
00817a40  08 20 9d e5                                      ldr r2, [sp, #8]
00817a44  02 20 63 e0                                      rsb r2, r3, r2
00817a48  42 21 b0 e1                                      asrs r2, r2, #2
00817a4c  02 80 a0 01                                      moveq r8, r2
00817a50  34 70 84 02                                      addeq r7, r4, #0x34
00817a54  2d 00 00 0a                                      beq #0x817b10
00817a58  cc 91 9f e5                                      ldr sb, [pc, #0x1cc]
00817a5c  00 80 a0 e3                                      mov r8, #0
00817a60  34 70 84 e2                                      add r7, r4, #0x34
00817a64  09 90 8f e0                                      add sb, pc, sb
00817a68  08 60 a0 e1                                      mov r6, r8
00817a6c  14 a0 8d e2                                      add sl, sp, #0x14
00817a70  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00817a74  04 00 a0 e1                                      mov r0, r4
00817a78  03 10 a0 e1                                      mov r1, r3
00817a7c  14 30 8d e5                                      str r3, [sp, #0x14]
00817a80  63 ff ff eb                                      bl #0x817814
00817a84  38 30 94 e5                                      ldr r3, [r4, #0x38]
00817a88  08 80 80 e1                                      orr r8, r0, r8
00817a8c  78 80 ef e6                                      uxtb r8, r8
00817a90  00 00 53 e3                                      cmp r3, #0
00817a94  51 00 00 0a                                      beq #0x817be0
00817a98  14 00 9d e5                                      ldr r0, [sp, #0x14]
00817a9c  07 10 a0 e1                                      mov r1, r7
00817aa0  00 00 00 ea                                      b #0x817aa8
00817aa4  02 30 a0 e1                                      mov r3, r2
00817aa8  10 20 93 e5                                      ldr r2, [r3, #0x10]
00817aac  00 00 52 e1                                      cmp r2, r0
00817ab0  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00817ab4  08 20 93 a5                                      ldrge r2, [r3, #8]
00817ab8  01 30 a0 b1                                      movlt r3, r1
00817abc  03 10 a0 e1                                      mov r1, r3
00817ac0  00 00 52 e3                                      cmp r2, #0
00817ac4  f6 ff ff 1a                                      bne #0x817aa4
00817ac8  03 00 57 e1                                      cmp r7, r3
00817acc  09 00 00 0a                                      beq #0x817af8
00817ad0  10 20 93 e5                                      ldr r2, [r3, #0x10]
00817ad4  00 00 52 e1                                      cmp r2, r0
00817ad8  40 00 00 ca                                      bgt #0x817be0
00817adc  03 00 57 e1                                      cmp r7, r3
00817ae0  04 00 00 0a                                      beq #0x817af8
00817ae4  07 00 a0 e1                                      mov r0, r7
00817ae8  0a 10 a0 e1                                      mov r1, sl
00817aec  42 f8 ff eb                                      bl #0x815bfc
00817af0  00 30 d9 e5                                      ldrb r3, [sb]
00817af4  0d 30 c0 e5                                      strb r3, [r0, #0xd]
00817af8  04 30 9d e5                                      ldr r3, [sp, #4]
00817afc  08 20 9d e5                                      ldr r2, [sp, #8]
00817b00  01 60 86 e2                                      add r6, r6, #1
00817b04  02 20 63 e0                                      rsb r2, r3, r2
00817b08  42 01 56 e1                                      cmp r6, r2, asr #2
00817b0c  d7 ff ff 3a                                      blo #0x817a70
00817b10  18 21 9f e5                                      ldr r2, [pc, #0x118]
00817b14  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00817b18  14 91 9f e5                                      ldr sb, [pc, #0x114]
00817b1c  02 20 8f e0                                      add r2, pc, r2
00817b20  03 00 57 e1                                      cmp r7, r3
00817b24  00 c0 d2 e5                                      ldrb ip, [r2]
00817b28  09 90 8f e0                                      add sb, pc, sb
00817b2c  10 a0 8d e2                                      add sl, sp, #0x10
00817b30  13 00 00 0a                                      beq #0x817b84
00817b34  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00817b38  00 00 56 e3                                      cmp r6, #0
00817b3c  01 00 00 1a                                      bne #0x817b48
00817b40  28 00 00 ea                                      b #0x817be8
00817b44  02 60 a0 e1                                      mov r6, r2
00817b48  08 20 96 e5                                      ldr r2, [r6, #8]
00817b4c  00 00 52 e3                                      cmp r2, #0
00817b50  fb ff ff 1a                                      bne #0x817b44
00817b54  21 20 d3 e5                                      ldrb r2, [r3, #0x21]
00817b58  0c 00 52 e1                                      cmp r2, ip
00817b5c  04 00 00 0a                                      beq #0x817b74
00817b60  07 00 a0 e1                                      mov r0, r7
00817b64  0a 10 a0 e1                                      mov r1, sl
00817b68  10 30 8d e5                                      str r3, [sp, #0x10]
00817b6c  14 fb ff eb                                      bl #0x8167c4
00817b70  00 20 d9 e5                                      ldrb r2, [sb]
00817b74  06 30 a0 e1                                      mov r3, r6
00817b78  03 00 57 e1                                      cmp r7, r3
00817b7c  02 c0 a0 e1                                      mov ip, r2
00817b80  eb ff ff 1a                                      bne #0x817b34
00817b84  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00817b88  04 00 9d e5                                      ldr r0, [sp, #4]
00817b8c  01 c0 2c e2                                      eor ip, ip, #1
00817b90  03 30 8f e0                                      add r3, pc, r3
00817b94  00 00 50 e3                                      cmp r0, #0
00817b98  00 c0 c3 e5                                      strb ip, [r3]
00817b9c  05 00 00 0a                                      beq #0x817bb8
00817ba0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00817ba4  01 10 60 e0                                      rsb r1, r0, r1
00817ba8  03 10 c1 e3                                      bic r1, r1, #3
00817bac  80 00 51 e3                                      cmp r1, #0x80
00817bb0  1b 00 00 8a                                      bhi #0x817c24
00817bb4  df 99 02 eb                                      bl #0x8be338
00817bb8  00 00 58 e3                                      cmp r8, #0
00817bbc  00 30 a0 e3                                      mov r3, #0
00817bc0  30 30 c4 e5                                      strb r3, [r4, #0x30]
00817bc4  2c 50 84 15                                      strne r5, [r4, #0x2c]
00817bc8  04 00 a0 e1                                      mov r0, r4
00817bcc  1e fb ff eb                                      bl #0x81684c
00817bd0  04 00 a0 e1                                      mov r0, r4
00817bd4  08 f6 ff eb                                      bl #0x8153fc
00817bd8  00 00 a0 e3                                      mov r0, #0
00817bdc  82 ff ff ea                                      b #0x8179ec
00817be0  07 30 a0 e1                                      mov r3, r7
00817be4  bc ff ff ea                                      b #0x817adc
00817be8  04 20 93 e5                                      ldr r2, [r3, #4]
00817bec  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00817bf0  01 00 53 e1                                      cmp r3, r1
00817bf4  03 60 a0 11                                      movne r6, r3
00817bf8  00 10 a0 13                                      movne r1, #0
00817bfc  05 00 00 1a                                      bne #0x817c18
00817c00  02 60 a0 e1                                      mov r6, r2
00817c04  04 20 92 e5                                      ldr r2, [r2, #4]
00817c08  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00817c0c  06 00 51 e1                                      cmp r1, r6
00817c10  fa ff ff 0a                                      beq #0x817c00
00817c14  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00817c18  01 00 52 e1                                      cmp r2, r1
00817c1c  02 60 a0 11                                      movne r6, r2
00817c20  cb ff ff ea                                      b #0x817b54
00817c24  05 e2 eb eb                                      bl #0x310440
00817c28  e2 ff ff ea                                      b #0x817bb8
; mapping-symbol data/literal pool
00817c2c  cc ba 21 00 14 ba 21 00 08 ba 21 00 a0 b9 21 00  .byte 0xcc, 0xba, 0x21, 0x00, 0x14, 0xba, 0x21, 0x00, 0x08, 0xba, 0x21, 0x00, 0xa0, 0xb9, 0x21, 0x00

; FUNCTION 0x00817c9c, declared_size=128, range_size=128, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager22PacketReceiverCallbackEiPci
; demangled: CPacketManager::PacketReceiverCallback(int, char*, int)
; decoder-mode: arm
00817c9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00817ca0  08 50 80 e2                                      add r5, r0, #8
00817ca4  30 d0 4d e2                                      sub sp, sp, #0x30
00817ca8  00 60 a0 e1                                      mov r6, r0
00817cac  05 00 a0 e1                                      mov r0, r5
00817cb0  03 70 a0 e1                                      mov r7, r3
00817cb4  02 80 a0 e1                                      mov r8, r2
00817cb8  0c 40 8d e2                                      add r4, sp, #0xc
00817cbc  aa d9 ff eb                                      bl #0x80e36c
00817cc0  f8 1f 00 e3                                      movw r1, #0xff8
00817cc4  01 00 57 e1                                      cmp r7, r1
00817cc8  07 10 a0 a1                                      movge r1, r7
00817ccc  01 10 a0 b1                                      movlt r1, r1
00817cd0  04 00 a0 e1                                      mov r0, r4
00817cd4  0b db ff eb                                      bl #0x80e908
00817cd8  24 60 86 e2                                      add r6, r6, #0x24
00817cdc  04 00 a0 e1                                      mov r0, r4
00817ce0  08 10 a0 e1                                      mov r1, r8
00817ce4  07 20 a0 e1                                      mov r2, r7
00817ce8  53 dc ff eb                                      bl #0x80ee3c
00817cec  06 10 a0 e1                                      mov r1, r6
00817cf0  2c 20 8d e2                                      add r2, sp, #0x2c
00817cf4  04 30 a0 e1                                      mov r3, r4
00817cf8  0d 00 a0 e1                                      mov r0, sp
00817cfc  2c 60 8d e5                                      str r6, [sp, #0x2c]
00817d00  cd ff ff eb                                      bl #0x817c3c
00817d04  04 00 a0 e1                                      mov r0, r4
00817d08  a0 da ff eb                                      bl #0x80e790
00817d0c  05 00 a0 e1                                      mov r0, r5
00817d10  94 d9 ff eb                                      bl #0x80e368
00817d14  30 d0 8d e2                                      add sp, sp, #0x30
00817d18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00817d1c, declared_size=88, range_size=88, mode=arm
; class-group: CPacketManager
; alias: _ZN14CPacketManager23sPacketReceiverCallbackEiPci
; demangled: CPacketManager::sPacketReceiverCallback(int, char*, int)
; decoder-mode: arm
00817d1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00817d20  00 40 a0 e1                                      mov r4, r0
00817d24  02 50 a0 e1                                      mov r5, r2
00817d28  01 60 a0 e1                                      mov r6, r1
00817d2c  10 90 ff eb                                      bl #0x7fbd74
00817d30  04 10 a0 e1                                      mov r1, r4
00817d34  6e 92 ff eb                                      bl #0x7fc6f4
00817d38  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00817d3c  00 00 50 e3                                      cmp r0, #0
00817d40  0c c0 8f e0                                      add ip, pc, ip
00817d44  00 00 00 1a                                      bne #0x817d4c
00817d48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00817d4c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00817d50  04 10 a0 e1                                      mov r1, r4
00817d54  06 20 a0 e1                                      mov r2, r6
00817d58  03 00 9c e7                                      ldr r0, [ip, r3]
00817d5c  05 30 a0 e1                                      mov r3, r5
00817d60  00 00 90 e5                                      ldr r0, [r0]
00817d64  70 40 bd e8                                      pop {r4, r5, r6, lr}
00817d68  cb ff ff ea                                      b #0x817c9c
; mapping-symbol data/literal pool
00817d6c  50 cd 17 00 b0 11 00 00                          .byte 0x50, 0xcd, 0x17, 0x00, 0xb0, 0x11, 0x00, 0x00
