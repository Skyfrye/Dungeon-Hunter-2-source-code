; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fd508, declared_size=4, range_size=4, mode=arm
; class-group: COnline
; alias: _ZN7COnline16DetectDisconnectEv
; demangled: COnline::DetectDisconnect()
; decoder-mode: arm
007fd508  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fd50c, declared_size=8, range_size=8, mode=arm
; class-group: COnline
; alias: _ZN7COnline15SetIsOnlineGameEb
; demangled: COnline::SetIsOnlineGame(bool)
; decoder-mode: arm
007fd50c  05 10 c0 e5                                      strb r1, [r0, #5]
007fd510  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fd514, declared_size=8, range_size=8, mode=arm
; class-group: COnline
; alias: _ZN7COnline15IsAgeRestrictedEv
; demangled: COnline::IsAgeRestricted()
; decoder-mode: arm
007fd514  00 00 a0 e3                                      mov r0, #0
007fd518  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fd51c, declared_size=76, range_size=76, mode=arm
; class-group: COnline
; alias: _ZN7COnline16ReportDisconnectENS_16tDisconnectCauseEi
; demangled: COnline::ReportDisconnect(COnline::tDisconnectCause, int)
; decoder-mode: arm
007fd51c  04 e0 2d e5                                      str lr, [sp, #-4]!
007fd520  01 30 71 e2                                      rsbs r3, r1, #1
007fd524  00 30 a0 33                                      movlo r3, #0
007fd528  0c d0 4d e2                                      sub sp, sp, #0xc
007fd52c  00 00 52 e3                                      cmp r2, #0
007fd530  01 30 83 13                                      orrne r3, r3, #1
007fd534  00 00 53 e3                                      cmp r3, #0
007fd538  04 10 8d e5                                      str r1, [sp, #4]
007fd53c  05 16 a0 e3                                      mov r1, #0x500000
007fd540  00 20 8d e5                                      str r2, [sp]
007fd544  08 00 80 e2                                      add r0, r0, #8
007fd548  03 10 81 12                                      addne r1, r1, #3
007fd54c  0d 20 a0 11                                      movne r2, sp
007fd550  02 10 81 02                                      addeq r1, r1, #2
007fd554  04 20 8d 02                                      addeq r2, sp, #4
007fd558  04 30 a0 e3                                      mov r3, #4
007fd55c  28 03 00 eb                                      bl #0x7fe204
007fd560  0c d0 8d e2                                      add sp, sp, #0xc
007fd564  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007fd568, declared_size=32, range_size=32, mode=arm
; class-group: COnline
; alias: _ZN7COnline7GetPingEv
; demangled: COnline::GetPing()
; decoder-mode: arm
007fd568  10 40 2d e9                                      push {r4, lr}
007fd56c  05 00 d0 e5                                      ldrb r0, [r0, #5]
007fd570  00 00 50 e3                                      cmp r0, #0
007fd574  00 00 00 1a                                      bne #0x7fd57c
007fd578  10 80 bd e8                                      pop {r4, pc}
007fd57c  fc f9 ff eb                                      bl #0x7fbd74
007fd580  10 40 bd e8                                      pop {r4, lr}
007fd584  82 fe ff ea                                      b #0x7fcf94

; FUNCTION 0x007fd588, declared_size=44, range_size=44, mode=arm
; class-group: COnline
; alias: _ZN7COnline16GetLocalMemberIdEv
; demangled: COnline::GetLocalMemberId()
; decoder-mode: arm
007fd588  10 40 2d e9                                      push {r4, lr}
007fd58c  05 30 d0 e5                                      ldrb r3, [r0, #5]
007fd590  00 00 53 e3                                      cmp r3, #0
007fd594  01 00 00 1a                                      bne #0x7fd5a0
007fd598  01 00 a0 e3                                      mov r0, #1
007fd59c  10 80 bd e8                                      pop {r4, pc}
007fd5a0  79 0e 00 eb                                      bl #0x800f8c
007fd5a4  00 30 90 e5                                      ldr r3, [r0]
007fd5a8  0f e0 a0 e1                                      mov lr, pc
007fd5ac  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007fd5b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fd5b4, declared_size=36, range_size=36, mode=arm
; class-group: COnline
; alias: _ZN7COnline8IsServerEv
; demangled: COnline::IsServer()
; decoder-mode: arm
007fd5b4  10 40 2d e9                                      push {r4, lr}
007fd5b8  05 30 d0 e5                                      ldrb r3, [r0, #5]
007fd5bc  00 00 53 e3                                      cmp r3, #0
007fd5c0  01 00 00 1a                                      bne #0x7fd5cc
007fd5c4  01 00 a0 e3                                      mov r0, #1
007fd5c8  10 80 bd e8                                      pop {r4, pc}
007fd5cc  6e 0e 00 eb                                      bl #0x800f8c
007fd5d0  10 40 bd e8                                      pop {r4, lr}
007fd5d4  c1 03 00 ea                                      b #0x7fe4e0

; FUNCTION 0x007fd5d8, declared_size=28, range_size=28, mode=arm
; class-group: COnline
; alias: _ZN7COnline12IsTimeSyncedEv
; demangled: COnline::IsTimeSynced()
; decoder-mode: arm
007fd5d8  10 40 2d e9                                      push {r4, lr}
007fd5dc  00 40 a0 e1                                      mov r4, r0
007fd5e0  f3 ff ff eb                                      bl #0x7fd5b4
007fd5e4  00 00 50 e3                                      cmp r0, #0
007fd5e8  01 00 a0 13                                      movne r0, #1
007fd5ec  30 00 d4 05                                      ldrbeq r0, [r4, #0x30]
007fd5f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fd634, declared_size=56, range_size=56, mode=arm
; class-group: COnline
; alias: _ZN7COnline11SendPacketsEv
; demangled: COnline::SendPackets()
; decoder-mode: arm
007fd634  10 40 2d e9                                      push {r4, lr}
007fd638  eb 5e 00 eb                                      bl #0x8151ec
007fd63c  00 00 50 e3                                      cmp r0, #0
007fd640  06 00 00 1a                                      bne #0x7fd660
007fd644  31 34 00 eb                                      bl #0x80a710
007fd648  00 00 50 e3                                      cmp r0, #0
007fd64c  00 00 00 1a                                      bne #0x7fd654
007fd650  10 80 bd e8                                      pop {r4, pc}
007fd654  d8 36 00 eb                                      bl #0x80b1bc
007fd658  10 40 bd e8                                      pop {r4, lr}
007fd65c  8f 40 00 ea                                      b #0x80d8a0
007fd660  e0 5e 00 eb                                      bl #0x8151e8
007fd664  d9 68 00 eb                                      bl #0x8179d0
007fd668  f5 ff ff ea                                      b #0x7fd644

; FUNCTION 0x007fd66c, declared_size=96, range_size=96, mode=arm
; class-group: COnline
; alias: _ZN7COnline7DestroyEv
; demangled: COnline::Destroy()
; decoder-mode: arm
007fd66c  50 30 9f e5                                      ldr r3, [pc, #0x50]
007fd670  50 20 9f e5                                      ldr r2, [pc, #0x50]
007fd674  10 40 2d e9                                      push {r4, lr}
007fd678  03 30 8f e0                                      add r3, pc, r3
007fd67c  02 40 93 e7                                      ldr r4, [r3, r2]
007fd680  00 30 94 e5                                      ldr r3, [r4]
007fd684  00 00 53 e3                                      cmp r3, #0
007fd688  0c 00 00 0a                                      beq #0x7fd6c0
007fd68c  3e 0e 00 eb                                      bl #0x800f8c
007fd690  3d 05 00 eb                                      bl #0x7feb8c
007fd694  00 00 94 e5                                      ldr r0, [r4]
007fd698  27 9e 00 eb                                      bl #0x824f3c
007fd69c  00 30 94 e5                                      ldr r3, [r4]
007fd6a0  00 00 53 e3                                      cmp r3, #0
007fd6a4  05 00 00 0a                                      beq #0x7fd6c0
007fd6a8  03 00 a0 e1                                      mov r0, r3
007fd6ac  00 30 93 e5                                      ldr r3, [r3]
007fd6b0  0f e0 a0 e1                                      mov lr, pc
007fd6b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007fd6b8  00 30 a0 e3                                      mov r3, #0
007fd6bc  00 30 84 e5                                      str r3, [r4]
007fd6c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd6c4  18 74 19 00 2c 18 00 00                          .byte 0x18, 0x74, 0x19, 0x00, 0x2c, 0x18, 0x00, 0x00

; FUNCTION 0x007fd6d0, declared_size=36, range_size=36, mode=arm
; class-group: COnline
; alias: _ZN7COnline9TerminateEv
; demangled: COnline::Terminate()
; decoder-mode: arm
007fd6d0  00 30 a0 e3                                      mov r3, #0
007fd6d4  10 40 2d e9                                      push {r4, lr}
007fd6d8  00 40 a0 e1                                      mov r4, r0
007fd6dc  04 30 c0 e5                                      strb r3, [r0, #4]
007fd6e0  01 00 a0 e3                                      mov r0, #1
007fd6e4  14 fb ff eb                                      bl #0x7fc33c
007fd6e8  08 00 84 e2                                      add r0, r4, #8
007fd6ec  10 40 bd e8                                      pop {r4, lr}
007fd6f0  50 03 00 ea                                      b #0x7fe438

; FUNCTION 0x007fd6f4, declared_size=80, range_size=80, mode=arm
; class-group: COnline
; alias: _ZN7COnline10InitializeEv
; demangled: COnline::Initialize()
; decoder-mode: arm
007fd6f4  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd6f8  04 40 d0 e5                                      ldrb r4, [r0, #4]
007fd6fc  38 50 9f e5                                      ldr r5, [pc, #0x38]
007fd700  00 60 a0 e1                                      mov r6, r0
007fd704  00 00 54 e3                                      cmp r4, #0
007fd708  05 50 8f e0                                      add r5, pc, r5
007fd70c  08 00 00 1a                                      bne #0x7fd734
007fd710  00 30 90 e5                                      ldr r3, [r0]
007fd714  0f e0 a0 e1                                      mov lr, pc
007fd718  00 f0 93 e5                                      ldr pc, [r3]
007fd71c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
007fd720  f0 02 c6 e1                                      strd r0, r1, [r6, #0x20]
007fd724  03 20 95 e7                                      ldr r2, [r5, r3]
007fd728  04 10 a0 e1                                      mov r1, r4
007fd72c  01 00 a0 e3                                      mov r0, #1
007fd730  09 fa ff eb                                      bl #0x7fbf5c
007fd734  00 00 a0 e3                                      mov r0, #0
007fd738  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fd73c  88 73 19 00 70 24 00 00                          .byte 0x88, 0x73, 0x19, 0x00, 0x70, 0x24, 0x00, 0x00

; FUNCTION 0x007fd744, declared_size=80, range_size=80, mode=arm
; class-group: COnline
; alias: _ZN7COnline11GetInstanceEv
; demangled: COnline::GetInstance()
; decoder-mode: arm
007fd744  40 30 9f e5                                      ldr r3, [pc, #0x40]
007fd748  40 20 9f e5                                      ldr r2, [pc, #0x40]
007fd74c  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd750  03 30 8f e0                                      add r3, pc, r3
007fd754  02 40 93 e7                                      ldr r4, [r3, r2]
007fd758  00 50 94 e5                                      ldr r5, [r4]
007fd75c  00 00 55 e3                                      cmp r5, #0
007fd760  01 00 00 0a                                      beq #0x7fd76c
007fd764  05 00 a0 e1                                      mov r0, r5
007fd768  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fd76c  02 10 a0 e3                                      mov r1, #2
007fd770  48 00 a0 e3                                      mov r0, #0x48
007fd774  7d 4b ec eb                                      bl #0x310570
007fd778  00 50 a0 e1                                      mov r5, r0
007fd77c  1f 9e 00 eb                                      bl #0x825000
007fd780  00 50 84 e5                                      str r5, [r4]
007fd784  05 00 a0 e1                                      mov r0, r5
007fd788  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fd78c  40 73 19 00 2c 18 00 00                          .byte 0x40, 0x73, 0x19, 0x00, 0x2c, 0x18, 0x00, 0x00

; FUNCTION 0x007fd798, declared_size=160, range_size=160, mode=arm
; class-group: COnline
; alias: _ZN7COnlineC1Ev
; demangled: COnline::COnline()
; decoder-mode: arm
007fd798  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd79c  84 50 9f e5                                      ldr r5, [pc, #0x84]
007fd7a0  84 20 9f e5                                      ldr r2, [pc, #0x84]
007fd7a4  84 30 9f e5                                      ldr r3, [pc, #0x84]
007fd7a8  05 50 8f e0                                      add r5, pc, r5
007fd7ac  02 20 95 e7                                      ldr r2, [r5, r2]
007fd7b0  03 30 95 e7                                      ldr r3, [r5, r3]
007fd7b4  00 60 a0 e3                                      mov r6, #0
007fd7b8  08 20 82 e2                                      add r2, r2, #8
007fd7bc  08 30 83 e2                                      add r3, r3, #8
007fd7c0  00 40 a0 e1                                      mov r4, r0
007fd7c4  00 20 80 e5                                      str r2, [r0]
007fd7c8  08 30 80 e5                                      str r3, [r0, #8]
007fd7cc  04 60 c0 e5                                      strb r6, [r0, #4]
007fd7d0  05 60 c0 e5                                      strb r6, [r0, #5]
007fd7d4  0c 00 80 e2                                      add r0, r0, #0xc
007fd7d8  ee 42 00 eb                                      bl #0x80e398
007fd7dc  50 30 9f e5                                      ldr r3, [pc, #0x50]
007fd7e0  10 20 84 e2                                      add r2, r4, #0x10
007fd7e4  14 20 84 e5                                      str r2, [r4, #0x14]
007fd7e8  03 30 95 e7                                      ldr r3, [r5, r3]
007fd7ec  28 60 84 e5                                      str r6, [r4, #0x28]
007fd7f0  10 20 84 e5                                      str r2, [r4, #0x10]
007fd7f4  08 30 83 e2                                      add r3, r3, #8
007fd7f8  08 30 84 e5                                      str r3, [r4, #8]
007fd7fc  01 30 a0 e3                                      mov r3, #1
007fd800  30 30 c4 e5                                      strb r3, [r4, #0x30]
007fd804  18 60 84 e5                                      str r6, [r4, #0x18]
007fd808  1c 60 84 e5                                      str r6, [r4, #0x1c]
007fd80c  34 00 84 e2                                      add r0, r4, #0x34
007fd810  e0 42 00 eb                                      bl #0x80e398
007fd814  38 30 84 e2                                      add r3, r4, #0x38
007fd818  3c 30 84 e5                                      str r3, [r4, #0x3c]
007fd81c  38 30 84 e5                                      str r3, [r4, #0x38]
007fd820  04 00 a0 e1                                      mov r0, r4
007fd824  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fd828  e8 72 19 00 88 2b 00 00 4c 0a 00 00 a0 34 00 00  .byte 0xe8, 0x72, 0x19, 0x00, 0x88, 0x2b, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xa0, 0x34, 0x00, 0x00

; FUNCTION 0x007fd838, declared_size=160, range_size=160, mode=arm
; class-group: COnline
; alias: _ZN7COnlineC2Ev
; demangled: COnline::COnline()
; decoder-mode: arm
007fd838  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd83c  84 50 9f e5                                      ldr r5, [pc, #0x84]
007fd840  84 20 9f e5                                      ldr r2, [pc, #0x84]
007fd844  84 30 9f e5                                      ldr r3, [pc, #0x84]
007fd848  05 50 8f e0                                      add r5, pc, r5
007fd84c  02 20 95 e7                                      ldr r2, [r5, r2]
007fd850  03 30 95 e7                                      ldr r3, [r5, r3]
007fd854  00 60 a0 e3                                      mov r6, #0
007fd858  08 20 82 e2                                      add r2, r2, #8
007fd85c  08 30 83 e2                                      add r3, r3, #8
007fd860  00 40 a0 e1                                      mov r4, r0
007fd864  00 20 80 e5                                      str r2, [r0]
007fd868  08 30 80 e5                                      str r3, [r0, #8]
007fd86c  04 60 c0 e5                                      strb r6, [r0, #4]
007fd870  05 60 c0 e5                                      strb r6, [r0, #5]
007fd874  0c 00 80 e2                                      add r0, r0, #0xc
007fd878  c6 42 00 eb                                      bl #0x80e398
007fd87c  50 30 9f e5                                      ldr r3, [pc, #0x50]
007fd880  10 20 84 e2                                      add r2, r4, #0x10
007fd884  14 20 84 e5                                      str r2, [r4, #0x14]
007fd888  03 30 95 e7                                      ldr r3, [r5, r3]
007fd88c  28 60 84 e5                                      str r6, [r4, #0x28]
007fd890  10 20 84 e5                                      str r2, [r4, #0x10]
007fd894  08 30 83 e2                                      add r3, r3, #8
007fd898  08 30 84 e5                                      str r3, [r4, #8]
007fd89c  01 30 a0 e3                                      mov r3, #1
007fd8a0  30 30 c4 e5                                      strb r3, [r4, #0x30]
007fd8a4  18 60 84 e5                                      str r6, [r4, #0x18]
007fd8a8  1c 60 84 e5                                      str r6, [r4, #0x1c]
007fd8ac  34 00 84 e2                                      add r0, r4, #0x34
007fd8b0  b8 42 00 eb                                      bl #0x80e398
007fd8b4  38 30 84 e2                                      add r3, r4, #0x38
007fd8b8  3c 30 84 e5                                      str r3, [r4, #0x3c]
007fd8bc  38 30 84 e5                                      str r3, [r4, #0x38]
007fd8c0  04 00 a0 e1                                      mov r0, r4
007fd8c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fd8c8  48 72 19 00 88 2b 00 00 4c 0a 00 00 a0 34 00 00  .byte 0x48, 0x72, 0x19, 0x00, 0x88, 0x2b, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xa0, 0x34, 0x00, 0x00

; FUNCTION 0x007fd914, declared_size=96, range_size=96, mode=arm
; class-group: COnline
; alias: _ZN7COnline14ReceivePacketsEv
; demangled: COnline::ReceivePackets()
; decoder-mode: arm
007fd914  10 40 2d e9                                      push {r4, lr}
007fd918  00 30 90 e5                                      ldr r3, [r0]
007fd91c  00 40 a0 e1                                      mov r4, r0
007fd920  0f e0 a0 e1                                      mov lr, pc
007fd924  00 f0 93 e5                                      ldr pc, [r3]
007fd928  28 30 94 e5                                      ldr r3, [r4, #0x28]
007fd92c  20 20 94 e5                                      ldr r2, [r4, #0x20]
007fd930  01 30 83 e2                                      add r3, r3, #1
007fd934  00 20 62 e0                                      rsb r2, r2, r0
007fd938  28 30 84 e5                                      str r3, [r4, #0x28]
007fd93c  1c 20 84 e5                                      str r2, [r4, #0x1c]
007fd940  72 33 00 eb                                      bl #0x80a710
007fd944  00 00 50 e3                                      cmp r0, #0
007fd948  06 00 00 1a                                      bne #0x7fd968
007fd94c  26 5e 00 eb                                      bl #0x8151ec
007fd950  00 00 50 e3                                      cmp r0, #0
007fd954  00 00 00 1a                                      bne #0x7fd95c
007fd958  10 80 bd e8                                      pop {r4, pc}
007fd95c  21 5e 00 eb                                      bl #0x8151e8
007fd960  10 40 bd e8                                      pop {r4, lr}
007fd964  50 65 00 ea                                      b #0x816eac
007fd968  13 36 00 eb                                      bl #0x80b1bc
007fd96c  f8 34 00 eb                                      bl #0x80ad54
007fd970  f5 ff ff ea                                      b #0x7fd94c

; FUNCTION 0x007fd974, declared_size=120, range_size=120, mode=arm
; class-group: COnline
; alias: _ZN7COnline12SendSyncTimeEv
; demangled: COnline::SendSyncTime()
; decoder-mode: arm
007fd974  30 40 2d e9                                      push {r4, r5, lr}
007fd978  1c d0 4d e2                                      sub sp, sp, #0x1c
007fd97c  00 40 a0 e1                                      mov r4, r0
007fd980  0b ff ff eb                                      bl #0x7fd5b4
007fd984  00 00 50 e3                                      cmp r0, #0
007fd988  15 00 00 1a                                      bne #0x7fd9e4
007fd98c  00 30 94 e5                                      ldr r3, [r4]
007fd990  04 00 a0 e1                                      mov r0, r4
007fd994  0f e0 a0 e1                                      mov lr, pc
007fd998  00 f0 93 e5                                      ldr pc, [r3]
007fd99c  20 30 94 e5                                      ldr r3, [r4, #0x20]
007fd9a0  18 50 8d e2                                      add r5, sp, #0x18
007fd9a4  00 30 63 e0                                      rsb r3, r3, r0
007fd9a8  2c 30 84 e5                                      str r3, [r4, #0x2c]
007fd9ac  0c 30 25 e5                                      str r3, [r5, #-0xc]!
007fd9b0  ef f8 ff eb                                      bl #0x7fbd74
007fd9b4  00 40 a0 e1                                      mov r4, r0
007fd9b8  73 0d 00 eb                                      bl #0x800f8c
007fd9bc  00 30 90 e5                                      ldr r3, [r0]
007fd9c0  0f e0 a0 e1                                      mov lr, pc
007fd9c4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fd9c8  0c c0 a0 e3                                      mov ip, #0xc
007fd9cc  00 20 a0 e1                                      mov r2, r0
007fd9d0  05 30 a0 e1                                      mov r3, r5
007fd9d4  04 00 a0 e1                                      mov r0, r4
007fd9d8  01 10 a0 e3                                      mov r1, #1
007fd9dc  00 c0 8d e5                                      str ip, [sp]
007fd9e0  04 fb ff eb                                      bl #0x7fc5f8
007fd9e4  1c d0 8d e2                                      add sp, sp, #0x1c
007fd9e8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007fd9ec, declared_size=76, range_size=76, mode=arm
; class-group: COnline
; alias: _ZN7COnline8SyncTimeEv
; demangled: COnline::SyncTime()
; decoder-mode: arm
007fd9ec  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd9f0  00 40 a0 e1                                      mov r4, r0
007fd9f4  ee fe ff eb                                      bl #0x7fd5b4
007fd9f8  00 50 50 e2                                      subs r5, r0, #0
007fd9fc  02 00 00 0a                                      beq #0x7fda0c
007fda00  01 30 a0 e3                                      mov r3, #1
007fda04  30 30 c4 e5                                      strb r3, [r4, #0x30]
007fda08  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fda0c  34 60 84 e2                                      add r6, r4, #0x34
007fda10  06 00 a0 e1                                      mov r0, r6
007fda14  54 42 00 eb                                      bl #0x80e36c
007fda18  38 00 84 e2                                      add r0, r4, #0x38
007fda1c  f4 fe ff eb                                      bl #0x7fd5f4
007fda20  04 00 a0 e1                                      mov r0, r4
007fda24  30 50 c4 e5                                      strb r5, [r4, #0x30]
007fda28  d1 ff ff eb                                      bl #0x7fd974
007fda2c  06 00 a0 e1                                      mov r0, r6
007fda30  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fda34  4b 42 00 ea                                      b #0x80e368

; FUNCTION 0x007fda38, declared_size=96, range_size=96, mode=arm
; class-group: COnline
; alias: _ZN7COnlineD2Ev
; demangled: COnline::~COnline()
; decoder-mode: arm
007fda38  70 40 2d e9                                      push {r4, r5, r6, lr}
007fda3c  48 50 9f e5                                      ldr r5, [pc, #0x48]
007fda40  48 30 9f e5                                      ldr r3, [pc, #0x48]
007fda44  00 40 a0 e1                                      mov r4, r0
007fda48  05 50 8f e0                                      add r5, pc, r5
007fda4c  03 30 95 e7                                      ldr r3, [r5, r3]
007fda50  08 30 83 e2                                      add r3, r3, #8
007fda54  38 30 80 e4                                      str r3, [r0], #0x38
007fda58  e5 fe ff eb                                      bl #0x7fd5f4
007fda5c  34 00 84 e2                                      add r0, r4, #0x34
007fda60  42 42 00 eb                                      bl #0x80e370
007fda64  28 30 9f e5                                      ldr r3, [pc, #0x28]
007fda68  10 00 84 e2                                      add r0, r4, #0x10
007fda6c  03 30 95 e7                                      ldr r3, [r5, r3]
007fda70  08 30 83 e2                                      add r3, r3, #8
007fda74  08 30 84 e5                                      str r3, [r4, #8]
007fda78  3c fe ff eb                                      bl #0x7fd370
007fda7c  0c 00 84 e2                                      add r0, r4, #0xc
007fda80  3a 42 00 eb                                      bl #0x80e370
007fda84  04 00 a0 e1                                      mov r0, r4
007fda88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fda8c  48 70 19 00 88 2b 00 00 4c 0a 00 00              .byte 0x48, 0x70, 0x19, 0x00, 0x88, 0x2b, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fda98, declared_size=96, range_size=96, mode=arm
; class-group: COnline
; alias: _ZN7COnlineD1Ev
; demangled: COnline::~COnline()
; decoder-mode: arm
007fda98  70 40 2d e9                                      push {r4, r5, r6, lr}
007fda9c  48 50 9f e5                                      ldr r5, [pc, #0x48]
007fdaa0  48 30 9f e5                                      ldr r3, [pc, #0x48]
007fdaa4  00 40 a0 e1                                      mov r4, r0
007fdaa8  05 50 8f e0                                      add r5, pc, r5
007fdaac  03 30 95 e7                                      ldr r3, [r5, r3]
007fdab0  08 30 83 e2                                      add r3, r3, #8
007fdab4  38 30 80 e4                                      str r3, [r0], #0x38
007fdab8  cd fe ff eb                                      bl #0x7fd5f4
007fdabc  34 00 84 e2                                      add r0, r4, #0x34
007fdac0  2a 42 00 eb                                      bl #0x80e370
007fdac4  28 30 9f e5                                      ldr r3, [pc, #0x28]
007fdac8  10 00 84 e2                                      add r0, r4, #0x10
007fdacc  03 30 95 e7                                      ldr r3, [r5, r3]
007fdad0  08 30 83 e2                                      add r3, r3, #8
007fdad4  08 30 84 e5                                      str r3, [r4, #8]
007fdad8  24 fe ff eb                                      bl #0x7fd370
007fdadc  0c 00 84 e2                                      add r0, r4, #0xc
007fdae0  22 42 00 eb                                      bl #0x80e370
007fdae4  04 00 a0 e1                                      mov r0, r4
007fdae8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fdaec  e8 6f 19 00 88 2b 00 00 4c 0a 00 00              .byte 0xe8, 0x6f, 0x19, 0x00, 0x88, 0x2b, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fdaf8, declared_size=28, range_size=28, mode=arm
; class-group: COnline
; alias: _ZN7COnlineD0Ev
; demangled: COnline::~COnline()
; decoder-mode: arm
007fdaf8  10 40 2d e9                                      push {r4, lr}
007fdafc  00 40 a0 e1                                      mov r4, r0
007fdb00  e4 ff ff eb                                      bl #0x7fda98
007fdb04  04 00 a0 e1                                      mov r0, r4
007fdb08  4c 4a ec eb                                      bl #0x310440
007fdb0c  04 00 a0 e1                                      mov r0, r4
007fdb10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fdb58, declared_size=140, range_size=140, mode=arm
; class-group: COnline
; alias: _ZN7COnline6UpdateEf
; demangled: COnline::Update(float)
; decoder-mode: arm
007fdb58  10 40 2d e9                                      push {r4, lr}
007fdb5c  04 30 d0 e5                                      ldrb r3, [r0, #4]
007fdb60  00 40 a0 e1                                      mov r4, r0
007fdb64  00 00 53 e3                                      cmp r3, #0
007fdb68  00 00 00 1a                                      bne #0x7fdb70
007fdb6c  10 80 bd e8                                      pop {r4, pc}
007fdb70  05 0d 00 eb                                      bl #0x800f8c
007fdb74  00 30 90 e5                                      ldr r3, [r0]
007fdb78  0f e0 a0 e1                                      mov lr, pc
007fdb7c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
007fdb80  44 45 00 eb                                      bl #0x80f098
007fdb84  00 30 90 e5                                      ldr r3, [r0]
007fdb88  0f e0 a0 e1                                      mov lr, pc
007fdb8c  08 f0 93 e5                                      ldr pc, [r3, #8]
007fdb90  00 30 94 e5                                      ldr r3, [r4]
007fdb94  04 00 a0 e1                                      mov r0, r4
007fdb98  0f e0 a0 e1                                      mov lr, pc
007fdb9c  04 f0 93 e5                                      ldr pc, [r3, #4]
007fdba0  04 00 a0 e1                                      mov r0, r4
007fdba4  8b fe ff eb                                      bl #0x7fd5d8
007fdba8  00 00 50 e3                                      cmp r0, #0
007fdbac  ee ff ff 1a                                      bne #0x7fdb6c
007fdbb0  00 30 94 e5                                      ldr r3, [r4]
007fdbb4  04 00 a0 e1                                      mov r0, r4
007fdbb8  0f e0 a0 e1                                      mov lr, pc
007fdbbc  00 f0 93 e5                                      ldr pc, [r3]
007fdbc0  20 20 94 e5                                      ldr r2, [r4, #0x20]
007fdbc4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007fdbc8  00 20 62 e0                                      rsb r2, r2, r0
007fdbcc  02 30 63 e0                                      rsb r3, r3, r2
007fdbd0  fa 0f 53 e3                                      cmp r3, #0x3e8
007fdbd4  e4 ff ff 9a                                      bls #0x7fdb6c
007fdbd8  04 00 a0 e1                                      mov r0, r4
007fdbdc  10 40 bd e8                                      pop {r4, lr}
007fdbe0  63 ff ff ea                                      b #0x7fd974

; FUNCTION 0x007fdbe4, declared_size=516, range_size=516, mode=arm
; class-group: COnline
; alias: _ZN7COnline22PacketReceiverCallbackEiPci
; demangled: COnline::PacketReceiverCallback(int, char*, int)
; decoder-mode: arm
007fdbe4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fdbe8  01 70 a0 e1                                      mov r7, r1
007fdbec  18 d0 4d e2                                      sub sp, sp, #0x18
007fdbf0  02 60 a0 e1                                      mov r6, r2
007fdbf4  03 40 a0 e1                                      mov r4, r3
007fdbf8  00 50 a0 e1                                      mov r5, r0
007fdbfc  5c f8 ff eb                                      bl #0x7fbd74
007fdc00  07 10 a0 e1                                      mov r1, r7
007fdc04  ba fa ff eb                                      bl #0x7fc6f4
007fdc08  00 00 50 e3                                      cmp r0, #0
007fdc0c  01 00 00 0a                                      beq #0x7fdc18
007fdc10  0c 00 54 e3                                      cmp r4, #0xc
007fdc14  01 00 00 0a                                      beq #0x7fdc20
007fdc18  18 d0 8d e2                                      add sp, sp, #0x18
007fdc1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007fdc20  d9 0c 00 eb                                      bl #0x800f8c
007fdc24  2d 02 00 eb                                      bl #0x7fe4e0
007fdc28  00 00 50 e3                                      cmp r0, #0
007fdc2c  57 00 00 1a                                      bne #0x7fdd90
007fdc30  30 70 d5 e5                                      ldrb r7, [r5, #0x30]
007fdc34  00 00 57 e3                                      cmp r7, #0
007fdc38  f6 ff ff 1a                                      bne #0x7fdc18
007fdc3c  34 a0 85 e2                                      add sl, r5, #0x34
007fdc40  0a 00 a0 e1                                      mov r0, sl
007fdc44  08 80 8d e2                                      add r8, sp, #8
007fdc48  c7 41 00 eb                                      bl #0x80e36c
007fdc4c  04 20 a0 e1                                      mov r2, r4
007fdc50  06 10 a0 e1                                      mov r1, r6
007fdc54  08 00 a0 e1                                      mov r0, r8
007fdc58  02 43 ec eb                                      bl #0x30e868
007fdc5c  00 30 95 e5                                      ldr r3, [r5]
007fdc60  05 00 a0 e1                                      mov r0, r5
007fdc64  0f e0 a0 e1                                      mov lr, pc
007fdc68  00 f0 93 e5                                      ldr pc, [r3]
007fdc6c  20 20 95 e5                                      ldr r2, [r5, #0x20]
007fdc70  18 30 8d e2                                      add r3, sp, #0x18
007fdc74  14 10 a0 e3                                      mov r1, #0x14
007fdc78  04 10 23 e5                                      str r1, [r3, #-4]!
007fdc7c  00 20 62 e0                                      rsb r2, r2, r0
007fdc80  03 00 a0 e1                                      mov r0, r3
007fdc84  10 20 8d e5                                      str r2, [sp, #0x10]
007fdc88  a2 01 03 eb                                      bl #0x8be318
007fdc8c  08 30 9d e5                                      ldr r3, [sp, #8]
007fdc90  38 40 85 e2                                      add r4, r5, #0x38
007fdc94  08 30 80 e5                                      str r3, [r0, #8]
007fdc98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007fdc9c  0c 30 80 e5                                      str r3, [r0, #0xc]
007fdca0  08 30 98 e5                                      ldr r3, [r8, #8]
007fdca4  10 30 80 e5                                      str r3, [r0, #0x10]
007fdca8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007fdcac  00 40 80 e5                                      str r4, [r0]
007fdcb0  04 30 80 e5                                      str r3, [r0, #4]
007fdcb4  00 00 83 e5                                      str r0, [r3]
007fdcb8  38 20 95 e5                                      ldr r2, [r5, #0x38]
007fdcbc  3c 00 85 e5                                      str r0, [r5, #0x3c]
007fdcc0  02 00 54 e1                                      cmp r4, r2
007fdcc4  44 00 00 0a                                      beq #0x7fdddc
007fdcc8  02 30 a0 e1                                      mov r3, r2
007fdccc  00 30 93 e5                                      ldr r3, [r3]
007fdcd0  01 70 87 e2                                      add r7, r7, #1
007fdcd4  03 00 54 e1                                      cmp r4, r3
007fdcd8  fb ff ff 1a                                      bne #0x7fdccc
007fdcdc  13 00 57 e3                                      cmp r7, #0x13
007fdce0  02 30 a0 81                                      movhi r3, r2
007fdce4  00 60 a0 83                                      movhi r6, #0
007fdce8  00 70 a0 83                                      movhi r7, #0
007fdcec  06 00 00 8a                                      bhi #0x7fdd0c
007fdcf0  39 00 00 ea                                      b #0x7fdddc
007fdcf4  10 00 93 e5                                      ldr r0, [r3, #0x10]
007fdcf8  08 10 93 e5                                      ldr r1, [r3, #8]
007fdcfc  00 30 93 e5                                      ldr r3, [r3]
007fdd00  00 10 61 e0                                      rsb r1, r1, r0
007fdd04  01 60 96 e0                                      adds r6, r6, r1
007fdd08  00 70 a7 e2                                      adc r7, r7, #0
007fdd0c  04 00 53 e1                                      cmp r3, r4
007fdd10  f7 ff ff 1a                                      bne #0x7fdcf4
007fdd14  00 80 a0 e3                                      mov r8, #0
007fdd18  00 20 92 e5                                      ldr r2, [r2]
007fdd1c  01 80 88 e2                                      add r8, r8, #1
007fdd20  02 00 54 e1                                      cmp r4, r2
007fdd24  fb ff ff 1a                                      bne #0x7fdd18
007fdd28  00 30 95 e5                                      ldr r3, [r5]
007fdd2c  05 00 a0 e1                                      mov r0, r5
007fdd30  0f e0 a0 e1                                      mov lr, pc
007fdd34  00 f0 93 e5                                      ldr pc, [r3]
007fdd38  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007fdd3c  06 00 a0 e1                                      mov r0, r6
007fdd40  08 20 a0 e1                                      mov r2, r8
007fdd44  10 c0 93 e5                                      ldr ip, [r3, #0x10]
007fdd48  0c 60 93 e5                                      ldr r6, [r3, #0xc]
007fdd4c  07 10 a0 e1                                      mov r1, r7
007fdd50  00 30 a0 e3                                      mov r3, #0
007fdd54  06 60 6c e0                                      rsb r6, ip, r6
007fdd58  dd 42 ec eb                                      bl #0x30e8d4
007fdd5c  a0 60 86 e0                                      add r6, r6, r0, lsr #1
007fdd60  8b fe ff eb                                      bl #0x7fd794
007fdd64  d0 82 c0 e1                                      ldrd r8, sb, [r0, #0x20]
007fdd68  06 20 58 e0                                      subs r2, r8, r6
007fdd6c  00 30 c9 e2                                      sbc r3, sb, #0
007fdd70  f0 22 c0 e1                                      strd r2, r3, [r0, #0x20]
007fdd74  01 30 a0 e3                                      mov r3, #1
007fdd78  30 30 c5 e5                                      strb r3, [r5, #0x30]
007fdd7c  04 00 a0 e1                                      mov r0, r4
007fdd80  1b fe ff eb                                      bl #0x7fd5f4
007fdd84  0a 00 a0 e1                                      mov r0, sl
007fdd88  76 41 00 eb                                      bl #0x80e368
007fdd8c  a1 ff ff ea                                      b #0x7fdc18
007fdd90  08 80 8d e2                                      add r8, sp, #8
007fdd94  04 20 a0 e1                                      mov r2, r4
007fdd98  06 10 a0 e1                                      mov r1, r6
007fdd9c  08 00 a0 e1                                      mov r0, r8
007fdda0  b0 42 ec eb                                      bl #0x30e868
007fdda4  00 30 95 e5                                      ldr r3, [r5]
007fdda8  05 00 a0 e1                                      mov r0, r5
007fddac  0f e0 a0 e1                                      mov lr, pc
007fddb0  00 f0 93 e5                                      ldr pc, [r3]
007fddb4  20 30 95 e5                                      ldr r3, [r5, #0x20]
007fddb8  00 30 63 e0                                      rsb r3, r3, r0
007fddbc  0c 30 8d e5                                      str r3, [sp, #0xc]
007fddc0  eb f7 ff eb                                      bl #0x7fbd74
007fddc4  07 20 a0 e1                                      mov r2, r7
007fddc8  08 30 a0 e1                                      mov r3, r8
007fddcc  01 10 a0 e3                                      mov r1, #1
007fddd0  00 40 8d e5                                      str r4, [sp]
007fddd4  07 fa ff eb                                      bl #0x7fc5f8
007fddd8  8e ff ff ea                                      b #0x7fdc18
007fdddc  05 00 a0 e1                                      mov r0, r5
007fdde0  e3 fe ff eb                                      bl #0x7fd974
007fdde4  e6 ff ff ea                                      b #0x7fdd84

; FUNCTION 0x007fdde8, declared_size=40, range_size=40, mode=arm
; class-group: COnline
; alias: _ZN7COnline23sPacketReceiverCallbackEiPci
; demangled: COnline::sPacketReceiverCallback(int, char*, int)
; decoder-mode: arm
007fdde8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fddec  01 50 a0 e1                                      mov r5, r1
007fddf0  02 40 a0 e1                                      mov r4, r2
007fddf4  00 60 a0 e1                                      mov r6, r0
007fddf8  51 fe ff eb                                      bl #0x7fd744
007fddfc  06 10 a0 e1                                      mov r1, r6
007fde00  05 20 a0 e1                                      mov r2, r5
007fde04  04 30 a0 e1                                      mov r3, r4
007fde08  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fde0c  74 ff ff ea                                      b #0x7fdbe4
