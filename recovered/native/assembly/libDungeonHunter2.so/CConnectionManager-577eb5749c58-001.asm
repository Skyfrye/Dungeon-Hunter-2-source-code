; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fbd4c, declared_size=8, range_size=8, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager7GetImplEv
; demangled: CConnectionManager::GetImpl()
; decoder-mode: arm
007fbd4c  00 00 a0 e3                                      mov r0, #0
007fbd50  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fbd54, declared_size=32, range_size=32, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager11GetInstanceEv
; demangled: CConnectionManager::GetInstance()
; decoder-mode: arm
007fbd54  10 30 9f e5                                      ldr r3, [pc, #0x10]
007fbd58  10 20 9f e5                                      ldr r2, [pc, #0x10]
007fbd5c  03 30 8f e0                                      add r3, pc, r3
007fbd60  02 20 93 e7                                      ldr r2, [r3, r2]
007fbd64  00 00 92 e5                                      ldr r0, [r2]
007fbd68  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fbd6c  34 8d 19 00 78 3d 00 00                          .byte 0x34, 0x8d, 0x19, 0x00, 0x78, 0x3d, 0x00, 0x00

; FUNCTION 0x007fbd78, declared_size=40, range_size=40, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager13IsInitializedEv
; demangled: CConnectionManager::IsInitialized()
; decoder-mode: arm
007fbd78  18 30 9f e5                                      ldr r3, [pc, #0x18]
007fbd7c  18 20 9f e5                                      ldr r2, [pc, #0x18]
007fbd80  03 30 8f e0                                      add r3, pc, r3
007fbd84  02 20 93 e7                                      ldr r2, [r3, r2]
007fbd88  00 00 92 e5                                      ldr r0, [r2]
007fbd8c  00 00 50 e3                                      cmp r0, #0
007fbd90  a8 00 d0 15                                      ldrbne r0, [r0, #0xa8]
007fbd94  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fbd98  10 8d 19 00 78 3d 00 00                          .byte 0x10, 0x8d, 0x19, 0x00, 0x78, 0x3d, 0x00, 0x00

; FUNCTION 0x007fbda0, declared_size=88, range_size=88, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager24GetConnectionByNetworkIdER10CNetworkId
; demangled: CConnectionManager::GetConnectionByNetworkId(CNetworkId&)
; decoder-mode: arm
007fbda0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fbda4  00 70 a0 e1                                      mov r7, r0
007fbda8  01 60 a0 e1                                      mov r6, r1
007fbdac  00 40 a0 e1                                      mov r4, r0
007fbdb0  00 50 a0 e3                                      mov r5, #0
007fbdb4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fbdb8  06 10 a0 e1                                      mov r1, r6
007fbdbc  04 40 84 e2                                      add r4, r4, #4
007fbdc0  00 00 53 e3                                      cmp r3, #0
007fbdc4  20 00 83 e2                                      add r0, r3, #0x20
007fbdc8  05 00 00 0a                                      beq #0x7fbde4
007fbdcc  da fe ff eb                                      bl #0x7fb93c
007fbdd0  00 00 50 e3                                      cmp r0, #0
007fbdd4  02 00 00 0a                                      beq #0x7fbde4
007fbdd8  05 51 87 e0                                      add r5, r7, r5, lsl #2
007fbddc  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007fbde0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fbde4  01 50 85 e2                                      add r5, r5, #1
007fbde8  20 00 55 e3                                      cmp r5, #0x20
007fbdec  f0 ff ff 1a                                      bne #0x7fbdb4
007fbdf0  00 00 a0 e3                                      mov r0, #0
007fbdf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fbdf8, declared_size=92, range_size=92, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager11GetMemberIdER10CNetworkId
; demangled: CConnectionManager::GetMemberId(CNetworkId&)
; decoder-mode: arm
007fbdf8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fbdfc  00 70 a0 e1                                      mov r7, r0
007fbe00  01 60 a0 e1                                      mov r6, r1
007fbe04  00 40 a0 e1                                      mov r4, r0
007fbe08  00 50 a0 e3                                      mov r5, #0
007fbe0c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fbe10  06 10 a0 e1                                      mov r1, r6
007fbe14  04 40 84 e2                                      add r4, r4, #4
007fbe18  00 00 53 e3                                      cmp r3, #0
007fbe1c  20 00 83 e2                                      add r0, r3, #0x20
007fbe20  06 00 00 0a                                      beq #0x7fbe40
007fbe24  c4 fe ff eb                                      bl #0x7fb93c
007fbe28  00 00 50 e3                                      cmp r0, #0
007fbe2c  03 00 00 0a                                      beq #0x7fbe40
007fbe30  05 51 87 e0                                      add r5, r7, r5, lsl #2
007fbe34  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007fbe38  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
007fbe3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fbe40  01 50 85 e2                                      add r5, r5, #1
007fbe44  20 00 55 e3                                      cmp r5, #0x20
007fbe48  ef ff ff 1a                                      bne #0x7fbe0c
007fbe4c  00 00 e0 e3                                      mvn r0, #0
007fbe50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fbe54, declared_size=64, range_size=64, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager13DisconnectAllEv
; demangled: CConnectionManager::DisconnectAll()
; decoder-mode: arm
007fbe54  70 40 2d e9                                      push {r4, r5, r6, lr}
007fbe58  00 50 a0 e1                                      mov r5, r0
007fbe5c  00 40 a0 e3                                      mov r4, #0
007fbe60  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007fbe64  01 40 84 e2                                      add r4, r4, #1
007fbe68  04 50 85 e2                                      add r5, r5, #4
007fbe6c  00 00 53 e3                                      cmp r3, #0
007fbe70  03 00 a0 e1                                      mov r0, r3
007fbe74  02 00 00 0a                                      beq #0x7fbe84
007fbe78  00 30 93 e5                                      ldr r3, [r3]
007fbe7c  0f e0 a0 e1                                      mov lr, pc
007fbe80  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007fbe84  20 00 54 e3                                      cmp r4, #0x20
007fbe88  f4 ff ff 1a                                      bne #0x7fbe60
007fbe8c  00 00 a0 e3                                      mov r0, #0
007fbe90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fbe94, declared_size=88, range_size=88, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager18GetConnectionCountEb
; demangled: CConnectionManager::GetConnectionCount(bool)
; decoder-mode: arm
007fbe94  00 30 a0 e3                                      mov r3, #0
007fbe98  00 20 a0 e1                                      mov r2, r0
007fbe9c  03 00 a0 e1                                      mov r0, r3
007fbea0  06 00 00 ea                                      b #0x7fbec0
007fbea4  18 c0 9c e5                                      ldr ip, [ip, #0x18]
007fbea8  04 00 5c e3                                      cmp ip, #4
007fbeac  08 00 00 0a                                      beq #0x7fbed4
007fbeb0  01 30 83 e2                                      add r3, r3, #1
007fbeb4  20 00 53 e3                                      cmp r3, #0x20
007fbeb8  04 20 82 e2                                      add r2, r2, #4
007fbebc  09 00 00 0a                                      beq #0x7fbee8
007fbec0  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
007fbec4  00 00 5c e3                                      cmp ip, #0
007fbec8  f8 ff ff 0a                                      beq #0x7fbeb0
007fbecc  00 00 51 e3                                      cmp r1, #0
007fbed0  f3 ff ff 1a                                      bne #0x7fbea4
007fbed4  01 30 83 e2                                      add r3, r3, #1
007fbed8  20 00 53 e3                                      cmp r3, #0x20
007fbedc  01 00 80 e2                                      add r0, r0, #1
007fbee0  04 20 82 e2                                      add r2, r2, #4
007fbee4  f5 ff ff 1a                                      bne #0x7fbec0
007fbee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fbeec, declared_size=112, range_size=112, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager9SendToAllE12tPACKET_TYPEPvi
; demangled: CConnectionManager::SendToAll(tPACKET_TYPE, void*, int)
; decoder-mode: arm
007fbeec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fbef0  01 60 a0 e1                                      mov r6, r1
007fbef4  02 70 a0 e1                                      mov r7, r2
007fbef8  03 80 a0 e1                                      mov r8, r3
007fbefc  00 50 a0 e1                                      mov r5, r0
007fbf00  00 40 a0 e3                                      mov r4, #0
007fbf04  01 00 00 ea                                      b #0x7fbf10
007fbf08  20 00 54 e3                                      cmp r4, #0x20
007fbf0c  10 00 00 0a                                      beq #0x7fbf54
007fbf10  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007fbf14  01 40 84 e2                                      add r4, r4, #1
007fbf18  04 50 85 e2                                      add r5, r5, #4
007fbf1c  00 00 53 e3                                      cmp r3, #0
007fbf20  f8 ff ff 0a                                      beq #0x7fbf08
007fbf24  18 20 93 e5                                      ldr r2, [r3, #0x18]
007fbf28  04 00 52 e3                                      cmp r2, #4
007fbf2c  f5 ff ff 1a                                      bne #0x7fbf08
007fbf30  03 00 a0 e1                                      mov r0, r3
007fbf34  00 c0 93 e5                                      ldr ip, [r3]
007fbf38  06 10 a0 e1                                      mov r1, r6
007fbf3c  07 20 a0 e1                                      mov r2, r7
007fbf40  08 30 a0 e1                                      mov r3, r8
007fbf44  0f e0 a0 e1                                      mov lr, pc
007fbf48  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007fbf4c  20 00 54 e3                                      cmp r4, #0x20
007fbf50  ee ff ff 1a                                      bne #0x7fbf10
007fbf54  00 00 a0 e3                                      mov r0, #0
007fbf58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fbf5c, declared_size=60, range_size=60, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager18RegisterPacketTypeE12tPACKET_TYPE14tPROTOCOL_TYPEPFviPciE
; demangled: CConnectionManager::RegisterPacketType(tPACKET_TYPE, tPROTOCOL_TYPE, void (*)(int, char*, int))
; decoder-mode: arm
007fbf5c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fbf60  0c c0 a0 e3                                      mov ip, #0xc
007fbf64  9c 00 0c e0                                      mul ip, ip, r0
007fbf68  24 00 9f e5                                      ldr r0, [pc, #0x24]
007fbf6c  03 30 8f e0                                      add r3, pc, r3
007fbf70  04 40 2d e5                                      str r4, [sp, #-4]!
007fbf74  00 30 93 e7                                      ldr r3, [r3, r0]
007fbf78  00 00 a0 e3                                      mov r0, #0
007fbf7c  0c 40 83 e0                                      add r4, r3, ip
007fbf80  0c 10 83 e7                                      str r1, [r3, ip]
007fbf84  04 20 84 e5                                      str r2, [r4, #4]
007fbf88  10 00 bd e8                                      ldm sp!, {r4}
007fbf8c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fbf90  24 8b 19 00 e4 2c 00 00                          .byte 0x24, 0x8b, 0x19, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fbf98, declared_size=60, range_size=60, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager18RegisterPacketTypeE12tPACKET_TYPE14tPROTOCOL_TYPEPFvR10CNetworkIdPciE
; demangled: CConnectionManager::RegisterPacketType(tPACKET_TYPE, tPROTOCOL_TYPE, void (*)(CNetworkId&, char*, int))
; decoder-mode: arm
007fbf98  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fbf9c  0c c0 a0 e3                                      mov ip, #0xc
007fbfa0  9c 00 0c e0                                      mul ip, ip, r0
007fbfa4  24 00 9f e5                                      ldr r0, [pc, #0x24]
007fbfa8  03 30 8f e0                                      add r3, pc, r3
007fbfac  04 40 2d e5                                      str r4, [sp, #-4]!
007fbfb0  00 30 93 e7                                      ldr r3, [r3, r0]
007fbfb4  00 00 a0 e3                                      mov r0, #0
007fbfb8  0c 40 83 e0                                      add r4, r3, ip
007fbfbc  0c 10 83 e7                                      str r1, [r3, ip]
007fbfc0  08 20 84 e5                                      str r2, [r4, #8]
007fbfc4  10 00 bd e8                                      ldm sp!, {r4}
007fbfc8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fbfcc  e8 8a 19 00 e4 2c 00 00                          .byte 0xe8, 0x8a, 0x19, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fbfd4, declared_size=64, range_size=64, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager22IsPacketTypeRegisteredE12tPACKET_TYPE
; demangled: CConnectionManager::IsPacketTypeRegistered(tPACKET_TYPE)
; decoder-mode: arm
007fbfd4  30 30 9f e5                                      ldr r3, [pc, #0x30]
007fbfd8  30 20 9f e5                                      ldr r2, [pc, #0x30]
007fbfdc  03 30 8f e0                                      add r3, pc, r3
007fbfe0  02 20 93 e7                                      ldr r2, [r3, r2]
007fbfe4  0c 30 a0 e3                                      mov r3, #0xc
007fbfe8  93 20 22 e0                                      mla r2, r3, r0, r2
007fbfec  08 30 92 e5                                      ldr r3, [r2, #8]
007fbff0  00 00 53 e3                                      cmp r3, #0
007fbff4  01 00 a0 13                                      movne r0, #1
007fbff8  1e ff 2f 11                                      bxne lr
007fbffc  04 00 92 e5                                      ldr r0, [r2, #4]
007fc000  00 00 50 e2                                      subs r0, r0, #0
007fc004  01 00 a0 13                                      movne r0, #1
007fc008  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fc00c  b4 8a 19 00 e4 2c 00 00                          .byte 0xb4, 0x8a, 0x19, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fc014, declared_size=76, range_size=76, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager22GetPacketTransportTypeE12tPACKET_TYPE
; demangled: CConnectionManager::GetPacketTransportType(tPACKET_TYPE)
; decoder-mode: arm
007fc014  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc018  00 50 a0 e1                                      mov r5, r0
007fc01c  01 00 a0 e1                                      mov r0, r1
007fc020  01 40 a0 e1                                      mov r4, r1
007fc024  ea ff ff eb                                      bl #0x7fbfd4
007fc028  28 30 9f e5                                      ldr r3, [pc, #0x28]
007fc02c  00 00 50 e3                                      cmp r0, #0
007fc030  03 30 8f e0                                      add r3, pc, r3
007fc034  06 00 00 0a                                      beq #0x7fc054
007fc038  0c 20 a0 e3                                      mov r2, #0xc
007fc03c  92 04 04 e0                                      mul r4, r2, r4
007fc040  14 20 9f e5                                      ldr r2, [pc, #0x14]
007fc044  02 30 93 e7                                      ldr r3, [r3, r2]
007fc048  04 30 93 e7                                      ldr r3, [r3, r4]
007fc04c  03 51 85 e0                                      add r5, r5, r3, lsl #2
007fc050  9c 00 95 e5                                      ldr r0, [r5, #0x9c]
007fc054  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fc058  60 8a 19 00 e4 2c 00 00                          .byte 0x60, 0x8a, 0x19, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fc060, declared_size=12, range_size=12, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager16GetTransportTypeE14tPROTOCOL_TYPE
; demangled: CConnectionManager::GetTransportType(tPROTOCOL_TYPE)
; decoder-mode: arm
007fc060  01 11 80 e0                                      add r1, r0, r1, lsl #2
007fc064  9c 00 91 e5                                      ldr r0, [r1, #0x9c]
007fc068  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc06c, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager15PingConnectionsEv
; demangled: CConnectionManager::PingConnections()
; decoder-mode: arm
007fc06c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc070, declared_size=36, range_size=36, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager21SetConnectionTimeoutsEj
; demangled: CConnectionManager::SetConnectionTimeouts(unsigned int)
; decoder-mode: arm
007fc070  00 30 a0 e3                                      mov r3, #0
007fc074  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
007fc078  01 30 83 e2                                      add r3, r3, #1
007fc07c  04 00 80 e2                                      add r0, r0, #4
007fc080  00 00 52 e3                                      cmp r2, #0
007fc084  50 10 82 15                                      strne r1, [r2, #0x50]
007fc088  20 00 53 e3                                      cmp r3, #0x20
007fc08c  f8 ff ff 1a                                      bne #0x7fc074
007fc090  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc094, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager15ReportStatisticEi21tCONNECTION_STATISTICi
; demangled: CConnectionManager::ReportStatistic(int, tCONNECTION_STATISTIC, int)
; decoder-mode: arm
007fc094  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc098, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager15ReportStatisticE15tTRANSPORT_TYPER10CNetworkId21tCONNECTION_STATISTICi
; demangled: CConnectionManager::ReportStatistic(tTRANSPORT_TYPE, CNetworkId&, tCONNECTION_STATISTIC, int)
; decoder-mode: arm
007fc098  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc09c, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager15PrintStatisticsEv
; demangled: CConnectionManager::PrintStatistics()
; decoder-mode: arm
007fc09c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc0a0, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager21PrintMergedStatisticsEv
; demangled: CConnectionManager::PrintMergedStatistics()
; decoder-mode: arm
007fc0a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc0a4, declared_size=4, range_size=4, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager12GetBandwidthERiS0_
; demangled: CConnectionManager::GetBandwidth(int&, int&)
; decoder-mode: arm
007fc0a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fc0a8, declared_size=152, range_size=152, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManagerC1Ev
; demangled: CConnectionManager::CConnectionManager()
; decoder-mode: arm
007fc0a8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc0ac  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
007fc0b0  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
007fc0b4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
007fc0b8  05 50 8f e0                                      add r5, pc, r5
007fc0bc  02 20 95 e7                                      ldr r2, [r5, r2]
007fc0c0  03 30 95 e7                                      ldr r3, [r5, r3]
007fc0c4  00 40 a0 e1                                      mov r4, r0
007fc0c8  08 20 82 e2                                      add r2, r2, #8
007fc0cc  08 30 83 e2                                      add r3, r3, #8
007fc0d0  00 20 80 e5                                      str r2, [r0]
007fc0d4  08 30 80 e5                                      str r3, [r0, #8]
007fc0d8  0c 00 80 e2                                      add r0, r0, #0xc
007fc0dc  ad 48 00 eb                                      bl #0x80e398
007fc0e0  54 20 9f e5                                      ldr r2, [pc, #0x54]
007fc0e4  00 10 a0 e3                                      mov r1, #0
007fc0e8  10 00 84 e2                                      add r0, r4, #0x10
007fc0ec  02 20 95 e7                                      ldr r2, [r5, r2]
007fc0f0  64 c0 a0 e3                                      mov ip, #0x64
007fc0f4  01 30 a0 e1                                      mov r3, r1
007fc0f8  08 20 82 e2                                      add r2, r2, #8
007fc0fc  08 20 84 e5                                      str r2, [r4, #8]
007fc100  14 00 84 e5                                      str r0, [r4, #0x14]
007fc104  18 c0 84 e5                                      str ip, [r4, #0x18]
007fc108  10 00 84 e5                                      str r0, [r4, #0x10]
007fc10c  a8 10 c4 e5                                      strb r1, [r4, #0xa8]
007fc110  04 20 a0 e1                                      mov r2, r4
007fc114  01 30 83 e2                                      add r3, r3, #1
007fc118  20 00 53 e3                                      cmp r3, #0x20
007fc11c  1c 10 82 e5                                      str r1, [r2, #0x1c]
007fc120  04 20 82 e2                                      add r2, r2, #4
007fc124  fa ff ff 1a                                      bne #0x7fc114
007fc128  04 00 a0 e1                                      mov r0, r4
007fc12c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fc130  d8 89 19 00 54 1d 00 00 4c 0a 00 00 dc 22 00 00  .byte 0xd8, 0x89, 0x19, 0x00, 0x54, 0x1d, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xdc, 0x22, 0x00, 0x00

; FUNCTION 0x007fc140, declared_size=152, range_size=152, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManagerC2Ev
; demangled: CConnectionManager::CConnectionManager()
; decoder-mode: arm
007fc140  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc144  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
007fc148  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
007fc14c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
007fc150  05 50 8f e0                                      add r5, pc, r5
007fc154  02 20 95 e7                                      ldr r2, [r5, r2]
007fc158  03 30 95 e7                                      ldr r3, [r5, r3]
007fc15c  00 40 a0 e1                                      mov r4, r0
007fc160  08 20 82 e2                                      add r2, r2, #8
007fc164  08 30 83 e2                                      add r3, r3, #8
007fc168  00 20 80 e5                                      str r2, [r0]
007fc16c  08 30 80 e5                                      str r3, [r0, #8]
007fc170  0c 00 80 e2                                      add r0, r0, #0xc
007fc174  87 48 00 eb                                      bl #0x80e398
007fc178  54 20 9f e5                                      ldr r2, [pc, #0x54]
007fc17c  00 10 a0 e3                                      mov r1, #0
007fc180  10 00 84 e2                                      add r0, r4, #0x10
007fc184  02 20 95 e7                                      ldr r2, [r5, r2]
007fc188  64 c0 a0 e3                                      mov ip, #0x64
007fc18c  01 30 a0 e1                                      mov r3, r1
007fc190  08 20 82 e2                                      add r2, r2, #8
007fc194  08 20 84 e5                                      str r2, [r4, #8]
007fc198  14 00 84 e5                                      str r0, [r4, #0x14]
007fc19c  18 c0 84 e5                                      str ip, [r4, #0x18]
007fc1a0  10 00 84 e5                                      str r0, [r4, #0x10]
007fc1a4  a8 10 c4 e5                                      strb r1, [r4, #0xa8]
007fc1a8  04 20 a0 e1                                      mov r2, r4
007fc1ac  01 30 83 e2                                      add r3, r3, #1
007fc1b0  20 00 53 e3                                      cmp r3, #0x20
007fc1b4  1c 10 82 e5                                      str r1, [r2, #0x1c]
007fc1b8  04 20 82 e2                                      add r2, r2, #4
007fc1bc  fa ff ff 1a                                      bne #0x7fc1ac
007fc1c0  04 00 a0 e1                                      mov r0, r4
007fc1c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fc1c8  40 89 19 00 54 1d 00 00 4c 0a 00 00 dc 22 00 00  .byte 0x40, 0x89, 0x19, 0x00, 0x54, 0x1d, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xdc, 0x22, 0x00, 0x00

; FUNCTION 0x007fc1d8, declared_size=108, range_size=108, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager20KeepAliveConnectionsEv
; demangled: CConnectionManager::KeepAliveConnections()
; decoder-mode: arm
007fc1d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fc1dc  00 50 a0 e1                                      mov r5, r0
007fc1e0  6b 05 00 eb                                      bl #0x7fd794
007fc1e4  00 30 90 e5                                      ldr r3, [r0]
007fc1e8  0f e0 a0 e1                                      mov lr, pc
007fc1ec  00 f0 93 e5                                      ldr pc, [r3]
007fc1f0  44 70 9f e5                                      ldr r7, [pc, #0x44]
007fc1f4  44 80 9f e5                                      ldr r8, [pc, #0x44]
007fc1f8  00 60 a0 e1                                      mov r6, r0
007fc1fc  07 70 8f e0                                      add r7, pc, r7
007fc200  08 00 97 e7                                      ldr r0, [r7, r8]
007fc204  58 48 00 eb                                      bl #0x80e36c
007fc208  00 40 a0 e3                                      mov r4, #0
007fc20c  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007fc210  01 40 84 e2                                      add r4, r4, #1
007fc214  06 10 a0 e1                                      mov r1, r6
007fc218  00 00 50 e3                                      cmp r0, #0
007fc21c  00 00 00 0a                                      beq #0x7fc224
007fc220  18 a5 00 eb                                      bl #0x825688
007fc224  20 00 54 e3                                      cmp r4, #0x20
007fc228  04 50 85 e2                                      add r5, r5, #4
007fc22c  f6 ff ff 1a                                      bne #0x7fc20c
007fc230  08 00 97 e7                                      ldr r0, [r7, r8]
007fc234  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007fc238  4a 48 00 ea                                      b #0x80e368
; mapping-symbol data/literal pool
007fc23c  94 88 19 00 74 36 00 00                          .byte 0x94, 0x88, 0x19, 0x00, 0x74, 0x36, 0x00, 0x00

; FUNCTION 0x007fc244, declared_size=248, range_size=248, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager17sReceiverCallbackE12tPACKET_TYPER10CNetworkIdPci
; demangled: CConnectionManager::sReceiverCallback(tPACKET_TYPE, CNetworkId&, char*, int)
; decoder-mode: arm
007fc244  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fc248  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
007fc24c  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
007fc250  04 d0 4d e2                                      sub sp, sp, #4
007fc254  04 40 8f e0                                      add r4, pc, r4
007fc258  06 70 94 e7                                      ldr r7, [r4, r6]
007fc25c  00 50 a0 e1                                      mov r5, r0
007fc260  03 90 a0 e1                                      mov sb, r3
007fc264  07 00 a0 e1                                      mov r0, r7
007fc268  01 80 a0 e1                                      mov r8, r1
007fc26c  02 a0 a0 e1                                      mov sl, r2
007fc270  3d 48 00 eb                                      bl #0x80e36c
007fc274  b6 fe ff eb                                      bl #0x7fbd54
007fc278  07 30 45 e2                                      sub r3, r5, #7
007fc27c  01 00 53 e3                                      cmp r3, #1
007fc280  00 b0 a0 e1                                      mov fp, r0
007fc284  03 00 00 9a                                      bls #0x7fc298
007fc288  05 00 a0 e1                                      mov r0, r5
007fc28c  50 ff ff eb                                      bl #0x7fbfd4
007fc290  00 00 50 e3                                      cmp r0, #0
007fc294  15 00 00 0a                                      beq #0x7fc2f0
007fc298  0b 00 a0 e1                                      mov r0, fp
007fc29c  08 10 a0 e1                                      mov r1, r8
007fc2a0  be fe ff eb                                      bl #0x7fbda0
007fc2a4  00 30 50 e2                                      subs r3, r0, #0
007fc2a8  14 00 00 0a                                      beq #0x7fc300
007fc2ac  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
007fc2b0  bb a7 00 eb                                      bl #0x8261a4
007fc2b4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
007fc2b8  0c 20 a0 e3                                      mov r2, #0xc
007fc2bc  03 30 94 e7                                      ldr r3, [r4, r3]
007fc2c0  92 35 25 e0                                      mla r5, r2, r5, r3
007fc2c4  08 10 95 e9                                      ldmib r5, {r3, ip}
007fc2c8  00 00 53 e3                                      cmp r3, #0
007fc2cc  10 00 00 0a                                      beq #0x7fc314
007fc2d0  07 00 a0 e1                                      mov r0, r7
007fc2d4  0a 10 a0 e1                                      mov r1, sl
007fc2d8  09 20 a0 e1                                      mov r2, sb
007fc2dc  33 ff 2f e1                                      blx r3
007fc2e0  06 00 94 e7                                      ldr r0, [r4, r6]
007fc2e4  04 d0 8d e2                                      add sp, sp, #4
007fc2e8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fc2ec  1d 48 00 ea                                      b #0x80e368
007fc2f0  07 00 a0 e1                                      mov r0, r7
007fc2f4  04 d0 8d e2                                      add sp, sp, #4
007fc2f8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fc2fc  19 48 00 ea                                      b #0x80e368
007fc300  30 30 9f e5                                      ldr r3, [pc, #0x30]
007fc304  0c 20 a0 e3                                      mov r2, #0xc
007fc308  03 30 94 e7                                      ldr r3, [r4, r3]
007fc30c  92 35 25 e0                                      mla r5, r2, r5, r3
007fc310  08 c0 95 e5                                      ldr ip, [r5, #8]
007fc314  00 00 5c e3                                      cmp ip, #0
007fc318  f0 ff ff 0a                                      beq #0x7fc2e0
007fc31c  08 00 a0 e1                                      mov r0, r8
007fc320  0a 10 a0 e1                                      mov r1, sl
007fc324  09 20 a0 e1                                      mov r2, sb
007fc328  3c ff 2f e1                                      blx ip
007fc32c  eb ff ff ea                                      b #0x7fc2e0
; mapping-symbol data/literal pool
007fc330  3c 88 19 00 74 36 00 00 e4 2c 00 00              .byte 0x3c, 0x88, 0x19, 0x00, 0x74, 0x36, 0x00, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fc33c, declared_size=72, range_size=72, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager20UnregisterPacketTypeE12tPACKET_TYPE
; demangled: CConnectionManager::UnregisterPacketType(tPACKET_TYPE)
; decoder-mode: arm
007fc33c  38 30 9f e5                                      ldr r3, [pc, #0x38]
007fc340  38 20 9f e5                                      ldr r2, [pc, #0x38]
007fc344  0c c0 a0 e3                                      mov ip, #0xc
007fc348  03 30 8f e0                                      add r3, pc, r3
007fc34c  9c 00 0c e0                                      mul ip, ip, r0
007fc350  02 10 93 e7                                      ldr r1, [r3, r2]
007fc354  04 40 2d e5                                      str r4, [sp, #-4]!
007fc358  01 20 8c e0                                      add r2, ip, r1
007fc35c  00 30 a0 e3                                      mov r3, #0
007fc360  08 40 82 e2                                      add r4, r2, #8
007fc364  01 30 8c e7                                      str r3, [ip, r1]
007fc368  00 00 e0 e3                                      mvn r0, #0
007fc36c  04 30 82 e5                                      str r3, [r2, #4]
007fc370  00 30 84 e5                                      str r3, [r4]
007fc374  10 00 bd e8                                      ldm sp!, {r4}
007fc378  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fc37c  48 87 19 00 e4 2c 00 00                          .byte 0x48, 0x87, 0x19, 0x00, 0xe4, 0x2c, 0x00, 0x00

; FUNCTION 0x007fc3ac, declared_size=64, range_size=64, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager6SendToE12tPACKET_TYPER10CNetworkIdPvi
; demangled: CConnectionManager::SendTo(tPACKET_TYPE, CNetworkId&, void*, int)
; decoder-mode: arm
007fc3ac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fc3b0  0c d0 4d e2                                      sub sp, sp, #0xc
007fc3b4  03 40 a0 e1                                      mov r4, r3
007fc3b8  01 50 a0 e1                                      mov r5, r1
007fc3bc  02 60 a0 e1                                      mov r6, r2
007fc3c0  13 ff ff eb                                      bl #0x7fc014
007fc3c4  00 70 a0 e1                                      mov r7, r0
007fc3c8  8c 79 00 eb                                      bl #0x81aa00
007fc3cc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007fc3d0  07 10 a0 e1                                      mov r1, r7
007fc3d4  06 20 a0 e1                                      mov r2, r6
007fc3d8  05 30 a0 e1                                      mov r3, r5
007fc3dc  10 10 8d e8                                      stm sp, {r4, ip}
007fc3e0  aa 7b 00 eb                                      bl #0x81b290
007fc3e4  0c d0 8d e2                                      add sp, sp, #0xc
007fc3e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007fc3ec, declared_size=76, range_size=76, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager13SendBroadcastE12tPACKET_TYPEPvi
; demangled: CConnectionManager::SendBroadcast(tPACKET_TYPE, void*, int)
; decoder-mode: arm
007fc3ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fc3f0  08 d0 4d e2                                      sub sp, sp, #8
007fc3f4  02 60 a0 e1                                      mov r6, r2
007fc3f8  03 50 a0 e1                                      mov r5, r3
007fc3fc  01 40 a0 e1                                      mov r4, r1
007fc400  00 70 a0 e1                                      mov r7, r0
007fc404  7d 79 00 eb                                      bl #0x81aa00
007fc408  04 10 a0 e1                                      mov r1, r4
007fc40c  00 80 a0 e1                                      mov r8, r0
007fc410  07 00 a0 e1                                      mov r0, r7
007fc414  fe fe ff eb                                      bl #0x7fc014
007fc418  04 20 a0 e1                                      mov r2, r4
007fc41c  00 10 a0 e1                                      mov r1, r0
007fc420  06 30 a0 e1                                      mov r3, r6
007fc424  08 00 a0 e1                                      mov r0, r8
007fc428  00 50 8d e5                                      str r5, [sp]
007fc42c  b2 7b 00 eb                                      bl #0x81b2fc
007fc430  08 d0 8d e2                                      add sp, sp, #8
007fc434  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fc438, declared_size=44, range_size=44, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager23GetConnectionByMemberIdEi
; demangled: CConnectionManager::GetConnectionByMemberId(int)
; decoder-mode: arm
007fc438  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc43c  01 50 a0 e1                                      mov r5, r1
007fc440  00 40 a0 e1                                      mov r4, r0
007fc444  d0 12 00 eb                                      bl #0x800f8c
007fc448  05 10 a0 e1                                      mov r1, r5
007fc44c  52 08 00 eb                                      bl #0x7fe59c
007fc450  1f 00 50 e3                                      cmp r0, #0x1f
007fc454  00 41 84 90                                      addls r4, r4, r0, lsl #2
007fc458  00 00 a0 83                                      movhi r0, #0
007fc45c  1c 00 94 95                                      ldrls r0, [r4, #0x1c]
007fc460  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fc464, declared_size=124, range_size=124, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager20PingReceiverCallbackER10CNetworkIdPci
; demangled: CConnectionManager::PingReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
007fc464  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fc468  1c d0 4d e2                                      sub sp, sp, #0x1c
007fc46c  08 50 8d e2                                      add r5, sp, #8
007fc470  10 40 a0 e3                                      mov r4, #0x10
007fc474  00 60 a0 e1                                      mov r6, r0
007fc478  01 70 a0 e1                                      mov r7, r1
007fc47c  05 00 a0 e1                                      mov r0, r5
007fc480  02 10 a0 e1                                      mov r1, r2
007fc484  04 20 a0 e1                                      mov r2, r4
007fc488  f6 48 ec eb                                      bl #0x30e868
007fc48c  14 30 dd e5                                      ldrb r3, [sp, #0x14]
007fc490  00 00 53 e3                                      cmp r3, #0
007fc494  08 00 00 1a                                      bne #0x7fc4bc
007fc498  06 00 a0 e1                                      mov r0, r6
007fc49c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007fc4a0  e4 ff ff eb                                      bl #0x7fc438
007fc4a4  00 00 50 e3                                      cmp r0, #0
007fc4a8  01 00 00 0a                                      beq #0x7fc4b4
007fc4ac  05 10 a0 e1                                      mov r1, r5
007fc4b0  17 a7 00 eb                                      bl #0x826114
007fc4b4  1c d0 8d e2                                      add sp, sp, #0x1c
007fc4b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007fc4bc  00 c0 a0 e3                                      mov ip, #0
007fc4c0  06 00 a0 e1                                      mov r0, r6
007fc4c4  0c 10 a0 e1                                      mov r1, ip
007fc4c8  07 20 a0 e1                                      mov r2, r7
007fc4cc  05 30 a0 e1                                      mov r3, r5
007fc4d0  00 40 8d e5                                      str r4, [sp]
007fc4d4  14 c0 cd e5                                      strb ip, [sp, #0x14]
007fc4d8  b3 ff ff eb                                      bl #0x7fc3ac
007fc4dc  f4 ff ff ea                                      b #0x7fc4b4

; FUNCTION 0x007fc4e0, declared_size=40, range_size=40, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager21sPingReceiverCallbackER10CNetworkIdPci
; demangled: CConnectionManager::sPingReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
007fc4e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc4e4  01 50 a0 e1                                      mov r5, r1
007fc4e8  02 40 a0 e1                                      mov r4, r2
007fc4ec  00 60 a0 e1                                      mov r6, r0
007fc4f0  17 fe ff eb                                      bl #0x7fbd54
007fc4f4  06 10 a0 e1                                      mov r1, r6
007fc4f8  05 20 a0 e1                                      mov r2, r5
007fc4fc  04 30 a0 e1                                      mov r3, r4
007fc500  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fc504  d6 ff ff ea                                      b #0x7fc464

; FUNCTION 0x007fc508, declared_size=96, range_size=96, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager25ProcessConnectionFinalizeER10CNetworkIdR12NetBitStream
; demangled: CConnectionManager::ProcessConnectionFinalize(CNetworkId&, NetBitStream&)
; decoder-mode: arm
007fc508  30 40 2d e9                                      push {r4, r5, lr}
007fc50c  14 d0 4d e2                                      sub sp, sp, #0x14
007fc510  00 40 a0 e1                                      mov r4, r0
007fc514  01 50 a0 e1                                      mov r5, r1
007fc518  02 00 a0 e1                                      mov r0, r2
007fc51c  0d 10 a0 e1                                      mov r1, sp
007fc520  10 20 a0 e3                                      mov r2, #0x10
007fc524  bf 49 00 eb                                      bl #0x80ec28
007fc528  05 10 a0 e1                                      mov r1, r5
007fc52c  04 00 a0 e1                                      mov r0, r4
007fc530  30 fe ff eb                                      bl #0x7fbdf8
007fc534  00 30 9d e5                                      ldr r3, [sp]
007fc538  00 10 a0 e1                                      mov r1, r0
007fc53c  03 00 50 e1                                      cmp r0, r3
007fc540  01 00 00 0a                                      beq #0x7fc54c
007fc544  14 d0 8d e2                                      add sp, sp, #0x14
007fc548  30 80 bd e8                                      pop {r4, r5, pc}
007fc54c  04 00 a0 e1                                      mov r0, r4
007fc550  b8 ff ff eb                                      bl #0x7fc438
007fc554  00 00 50 e3                                      cmp r0, #0
007fc558  f9 ff ff 0a                                      beq #0x7fc544
007fc55c  05 10 a0 e1                                      mov r1, r5
007fc560  61 a8 00 eb                                      bl #0x8266ec
007fc564  f6 ff ff ea                                      b #0x7fc544

; FUNCTION 0x007fc568, declared_size=144, range_size=144, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager25ProcessConnectionResponseER10CNetworkIdR12NetBitStream
; demangled: CConnectionManager::ProcessConnectionResponse(CNetworkId&, NetBitStream&)
; decoder-mode: arm
007fc568  30 40 2d e9                                      push {r4, r5, lr}
007fc56c  14 d0 4d e2                                      sub sp, sp, #0x14
007fc570  00 40 a0 e1                                      mov r4, r0
007fc574  01 50 a0 e1                                      mov r5, r1
007fc578  02 00 a0 e1                                      mov r0, r2
007fc57c  0d 10 a0 e1                                      mov r1, sp
007fc580  10 20 a0 e3                                      mov r2, #0x10
007fc584  a7 49 00 eb                                      bl #0x80ec28
007fc588  05 10 a0 e1                                      mov r1, r5
007fc58c  04 00 a0 e1                                      mov r0, r4
007fc590  18 fe ff eb                                      bl #0x7fbdf8
007fc594  00 30 9d e5                                      ldr r3, [sp]
007fc598  00 10 a0 e1                                      mov r1, r0
007fc59c  03 00 50 e1                                      cmp r0, r3
007fc5a0  0d 00 00 0a                                      beq #0x7fc5dc
007fc5a4  04 40 9d e5                                      ldr r4, [sp, #4]
007fc5a8  77 12 00 eb                                      bl #0x800f8c
007fc5ac  00 30 90 e5                                      ldr r3, [r0]
007fc5b0  0f e0 a0 e1                                      mov lr, pc
007fc5b4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007fc5b8  00 00 54 e1                                      cmp r4, r0
007fc5bc  04 00 00 0a                                      beq #0x7fc5d4
007fc5c0  71 12 00 eb                                      bl #0x800f8c
007fc5c4  04 10 9d e5                                      ldr r1, [sp, #4]
007fc5c8  00 30 90 e5                                      ldr r3, [r0]
007fc5cc  0f e0 a0 e1                                      mov lr, pc
007fc5d0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
007fc5d4  14 d0 8d e2                                      add sp, sp, #0x14
007fc5d8  30 80 bd e8                                      pop {r4, r5, pc}
007fc5dc  04 00 a0 e1                                      mov r0, r4
007fc5e0  94 ff ff eb                                      bl #0x7fc438
007fc5e4  00 00 50 e3                                      cmp r0, #0
007fc5e8  ed ff ff 0a                                      beq #0x7fc5a4
007fc5ec  05 10 a0 e1                                      mov r1, r5
007fc5f0  4e a8 00 eb                                      bl #0x826730
007fc5f4  ea ff ff ea                                      b #0x7fc5a4

; FUNCTION 0x007fc5f8, declared_size=64, range_size=64, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager6SendToE12tPACKET_TYPEiPvi
; demangled: CConnectionManager::SendTo(tPACKET_TYPE, int, void*, int)
; decoder-mode: arm
007fc5f8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc5fc  01 40 a0 e1                                      mov r4, r1
007fc600  02 10 a0 e1                                      mov r1, r2
007fc604  03 50 a0 e1                                      mov r5, r3
007fc608  8a ff ff eb                                      bl #0x7fc438
007fc60c  00 30 50 e2                                      subs r3, r0, #0
007fc610  06 00 00 0a                                      beq #0x7fc630
007fc614  00 c0 93 e5                                      ldr ip, [r3]
007fc618  04 10 a0 e1                                      mov r1, r4
007fc61c  05 20 a0 e1                                      mov r2, r5
007fc620  10 30 9d e5                                      ldr r3, [sp, #0x10]
007fc624  0f e0 a0 e1                                      mov lr, pc
007fc628  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007fc62c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fc630  03 00 a0 e1                                      mov r0, r3
007fc634  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fc638, declared_size=72, range_size=72, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager12SendToServerE12tPACKET_TYPEPvi
; demangled: CConnectionManager::SendToServer(tPACKET_TYPE, void*, int)
; decoder-mode: arm
007fc638  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fc63c  0c d0 4d e2                                      sub sp, sp, #0xc
007fc640  02 50 a0 e1                                      mov r5, r2
007fc644  03 40 a0 e1                                      mov r4, r3
007fc648  01 70 a0 e1                                      mov r7, r1
007fc64c  00 60 a0 e1                                      mov r6, r0
007fc650  4d 12 00 eb                                      bl #0x800f8c
007fc654  00 30 90 e5                                      ldr r3, [r0]
007fc658  0f e0 a0 e1                                      mov lr, pc
007fc65c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fc660  07 10 a0 e1                                      mov r1, r7
007fc664  00 20 a0 e1                                      mov r2, r0
007fc668  05 30 a0 e1                                      mov r3, r5
007fc66c  06 00 a0 e1                                      mov r0, r6
007fc670  00 40 8d e5                                      str r4, [sp]
007fc674  df ff ff eb                                      bl #0x7fc5f8
007fc678  0c d0 8d e2                                      add sp, sp, #0xc
007fc67c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007fc680, declared_size=40, range_size=40, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager14DisconnectPeerEi
; demangled: CConnectionManager::DisconnectPeer(int)
; decoder-mode: arm
007fc680  10 40 2d e9                                      push {r4, lr}
007fc684  6b ff ff eb                                      bl #0x7fc438
007fc688  00 30 50 e2                                      subs r3, r0, #0
007fc68c  03 00 00 0a                                      beq #0x7fc6a0
007fc690  00 30 93 e5                                      ldr r3, [r3]
007fc694  0f e0 a0 e1                                      mov lr, pc
007fc698  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007fc69c  10 80 bd e8                                      pop {r4, pc}
007fc6a0  03 00 a0 e1                                      mov r0, r3
007fc6a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fc6a8, declared_size=76, range_size=76, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager18GetMemberNetworkIdEi
; demangled: CConnectionManager::GetMemberNetworkId(int)
; decoder-mode: arm
007fc6a8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc6ac  00 40 a0 e1                                      mov r4, r0
007fc6b0  01 00 a0 e1                                      mov r0, r1
007fc6b4  02 10 a0 e1                                      mov r1, r2
007fc6b8  5e ff ff eb                                      bl #0x7fc438
007fc6bc  00 00 50 e3                                      cmp r0, #0
007fc6c0  07 00 00 0a                                      beq #0x7fc6e4
007fc6c4  04 50 a0 e1                                      mov r5, r4
007fc6c8  20 c0 80 e2                                      add ip, r0, #0x20
007fc6cc  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007fc6d0  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
007fc6d4  07 00 9c e8                                      ldm ip, {r0, r1, r2}
007fc6d8  07 00 85 e8                                      stm r5, {r0, r1, r2}
007fc6dc  04 00 a0 e1                                      mov r0, r4
007fc6e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fc6e4  04 00 a0 e1                                      mov r0, r4
007fc6e8  25 ff ff eb                                      bl #0x7fc384
007fc6ec  04 00 a0 e1                                      mov r0, r4
007fc6f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fc6f4, declared_size=36, range_size=36, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager11IsConnectedEi
; demangled: CConnectionManager::IsConnected(int)
; decoder-mode: arm
007fc6f4  10 40 2d e9                                      push {r4, lr}
007fc6f8  4e ff ff eb                                      bl #0x7fc438
007fc6fc  00 00 50 e3                                      cmp r0, #0
007fc700  03 00 00 0a                                      beq #0x7fc714
007fc704  18 00 90 e5                                      ldr r0, [r0, #0x18]
007fc708  04 00 50 e3                                      cmp r0, #4
007fc70c  00 00 a0 13                                      movne r0, #0
007fc710  01 00 a0 03                                      moveq r0, #1
007fc714  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fc718, declared_size=280, range_size=280, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager10DisconnectEib
; demangled: CConnectionManager::Disconnect(int, bool)
; decoder-mode: arm
007fc718  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc71c  38 d0 4d e2                                      sub sp, sp, #0x38
007fc720  04 10 8d e5                                      str r1, [sp, #4]
007fc724  02 50 a0 e1                                      mov r5, r2
007fc728  00 40 a0 e1                                      mov r4, r0
007fc72c  16 12 00 eb                                      bl #0x800f8c
007fc730  6a 07 00 eb                                      bl #0x7fe4e0
007fc734  00 00 50 e3                                      cmp r0, #0
007fc738  1b 00 00 1a                                      bne #0x7fc7ac
007fc73c  12 12 00 eb                                      bl #0x800f8c
007fc740  66 07 00 eb                                      bl #0x7fe4e0
007fc744  00 00 50 e3                                      cmp r0, #0
007fc748  04 10 9d 15                                      ldrne r1, [sp, #4]
007fc74c  0c 00 00 0a                                      beq #0x7fc784
007fc750  04 00 a0 e1                                      mov r0, r4
007fc754  c9 ff ff eb                                      bl #0x7fc680
007fc758  00 00 55 e3                                      cmp r5, #0
007fc75c  05 00 00 0a                                      beq #0x7fc778
007fc760  06 16 a0 e3                                      mov r1, #0x600000
007fc764  08 00 84 e2                                      add r0, r4, #8
007fc768  04 10 81 e2                                      add r1, r1, #4
007fc76c  04 20 8d e2                                      add r2, sp, #4
007fc770  04 30 a0 e3                                      mov r3, #4
007fc774  a2 06 00 eb                                      bl #0x7fe204
007fc778  00 00 a0 e3                                      mov r0, #0
007fc77c  38 d0 8d e2                                      add sp, sp, #0x38
007fc780  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fc784  00 12 00 eb                                      bl #0x800f8c
007fc788  00 30 90 e5                                      ldr r3, [r0]
007fc78c  0f e0 a0 e1                                      mov lr, pc
007fc790  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007fc794  04 10 9d e5                                      ldr r1, [sp, #4]
007fc798  01 00 50 e1                                      cmp r0, r1
007fc79c  eb ff ff 1a                                      bne #0x7fc750
007fc7a0  04 00 a0 e1                                      mov r0, r4
007fc7a4  aa fd ff eb                                      bl #0x7fbe54
007fc7a8  ea ff ff ea                                      b #0x7fc758
007fc7ac  04 00 a0 e1                                      mov r0, r4
007fc7b0  04 10 9d e5                                      ldr r1, [sp, #4]
007fc7b4  ce ff ff eb                                      bl #0x7fc6f4
007fc7b8  00 00 50 e3                                      cmp r0, #0
007fc7bc  de ff ff 0a                                      beq #0x7fc73c
007fc7c0  04 30 9d e5                                      ldr r3, [sp, #4]
007fc7c4  0c 60 8d e2                                      add r6, sp, #0xc
007fc7c8  02 1b a0 e3                                      mov r1, #0x800
007fc7cc  06 00 a0 e1                                      mov r0, r6
007fc7d0  2c 30 8d e5                                      str r3, [sp, #0x2c]
007fc7d4  30 50 cd e5                                      strb r5, [sp, #0x30]
007fc7d8  4a 48 00 eb                                      bl #0x80e908
007fc7dc  03 30 a0 e3                                      mov r3, #3
007fc7e0  38 10 8d e2                                      add r1, sp, #0x38
007fc7e4  04 30 61 e5                                      strb r3, [r1, #-4]!
007fc7e8  06 00 a0 e1                                      mov r0, r6
007fc7ec  01 20 a0 e3                                      mov r2, #1
007fc7f0  6c 49 00 eb                                      bl #0x80eda8
007fc7f4  2c 10 8d e2                                      add r1, sp, #0x2c
007fc7f8  06 00 a0 e1                                      mov r0, r6
007fc7fc  08 20 a0 e3                                      mov r2, #8
007fc800  68 49 00 eb                                      bl #0x80eda8
007fc804  5a fd ff eb                                      bl #0x7fbd74
007fc808  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007fc80c  05 10 a0 e3                                      mov r1, #5
007fc810  10 20 9d e5                                      ldr r2, [sp, #0x10]
007fc814  07 30 1c e2                                      ands r3, ip, #7
007fc818  01 30 a0 13                                      movne r3, #1
007fc81c  ac 31 83 e0                                      add r3, r3, ip, lsr #3
007fc820  b1 fd ff eb                                      bl #0x7fbeec
007fc824  06 00 a0 e1                                      mov r0, r6
007fc828  d8 47 00 eb                                      bl #0x80e790
007fc82c  c2 ff ff ea                                      b #0x7fc73c

; FUNCTION 0x007fc830, declared_size=52, range_size=52, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager17ProcessDisconnectER10CNetworkIdR12NetBitStream
; demangled: CConnectionManager::ProcessDisconnect(CNetworkId&, NetBitStream&)
; decoder-mode: arm
007fc830  10 40 2d e9                                      push {r4, lr}
007fc834  08 d0 4d e2                                      sub sp, sp, #8
007fc838  00 40 a0 e1                                      mov r4, r0
007fc83c  0d 10 a0 e1                                      mov r1, sp
007fc840  02 00 a0 e1                                      mov r0, r2
007fc844  08 20 a0 e3                                      mov r2, #8
007fc848  f6 48 00 eb                                      bl #0x80ec28
007fc84c  04 00 a0 e1                                      mov r0, r4
007fc850  00 10 9d e5                                      ldr r1, [sp]
007fc854  04 20 dd e5                                      ldrb r2, [sp, #4]
007fc858  ae ff ff eb                                      bl #0x7fc718
007fc85c  08 d0 8d e2                                      add sp, sp, #8
007fc860  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fc864, declared_size=108, range_size=108, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager21ProcessDisconnectPeerER10CNetworkIdR12NetBitStream
; demangled: CConnectionManager::ProcessDisconnectPeer(CNetworkId&, NetBitStream&)
; decoder-mode: arm
007fc864  10 40 2d e9                                      push {r4, lr}
007fc868  08 d0 4d e2                                      sub sp, sp, #8
007fc86c  00 40 a0 e1                                      mov r4, r0
007fc870  04 10 8d e2                                      add r1, sp, #4
007fc874  02 00 a0 e1                                      mov r0, r2
007fc878  04 20 a0 e3                                      mov r2, #4
007fc87c  e9 48 00 eb                                      bl #0x80ec28
007fc880  04 00 a0 e1                                      mov r0, r4
007fc884  04 10 9d e5                                      ldr r1, [sp, #4]
007fc888  99 ff ff eb                                      bl #0x7fc6f4
007fc88c  00 00 50 e3                                      cmp r0, #0
007fc890  01 00 00 1a                                      bne #0x7fc89c
007fc894  08 d0 8d e2                                      add sp, sp, #8
007fc898  10 80 bd e8                                      pop {r4, pc}
007fc89c  ba 11 00 eb                                      bl #0x800f8c
007fc8a0  0e 07 00 eb                                      bl #0x7fe4e0
007fc8a4  00 00 50 e3                                      cmp r0, #0
007fc8a8  03 00 00 1a                                      bne #0x7fc8bc
007fc8ac  04 00 a0 e1                                      mov r0, r4
007fc8b0  04 10 9d e5                                      ldr r1, [sp, #4]
007fc8b4  71 ff ff eb                                      bl #0x7fc680
007fc8b8  f5 ff ff ea                                      b #0x7fc894
007fc8bc  04 00 a0 e1                                      mov r0, r4
007fc8c0  04 10 9d e5                                      ldr r1, [sp, #4]
007fc8c4  00 20 a0 e3                                      mov r2, #0
007fc8c8  92 ff ff eb                                      bl #0x7fc718
007fc8cc  f0 ff ff ea                                      b #0x7fc894

; FUNCTION 0x007fc8d0, declared_size=96, range_size=96, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager13AddConnectionEiP11CConnection
; demangled: CConnectionManager::AddConnection(int, CConnection*)
; decoder-mode: arm
007fc8d0  70 40 2d e9                                      push {r4, r5, r6, lr}
007fc8d4  01 50 a0 e1                                      mov r5, r1
007fc8d8  02 40 a0 e1                                      mov r4, r2
007fc8dc  00 60 a0 e1                                      mov r6, r0
007fc8e0  a9 11 00 eb                                      bl #0x800f8c
007fc8e4  05 10 a0 e1                                      mov r1, r5
007fc8e8  2b 07 00 eb                                      bl #0x7fe59c
007fc8ec  00 30 e0 e1                                      mvn r3, r0
007fc8f0  a3 3f a0 e1                                      lsr r3, r3, #0x1f
007fc8f4  00 00 54 e3                                      cmp r4, #0
007fc8f8  00 30 a0 03                                      moveq r3, #0
007fc8fc  00 00 53 e3                                      cmp r3, #0
007fc900  01 00 00 1a                                      bne #0x7fc90c
007fc904  00 00 e0 e3                                      mvn r0, #0
007fc908  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fc90c  1f 00 50 e3                                      cmp r0, #0x1f
007fc910  fb ff ff ca                                      bgt #0x7fc904
007fc914  06 30 80 e2                                      add r3, r0, #6
007fc918  03 61 86 e0                                      add r6, r6, r3, lsl #2
007fc91c  04 30 96 e5                                      ldr r3, [r6, #4]
007fc920  00 00 53 e3                                      cmp r3, #0
007fc924  f6 ff ff 1a                                      bne #0x7fc904
007fc928  04 40 86 e5                                      str r4, [r6, #4]
007fc92c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fc930, declared_size=156, range_size=156, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager7ConnectEiR10CNetworkId
; demangled: CConnectionManager::Connect(int, CNetworkId&)
; decoder-mode: arm
007fc930  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fc934  02 60 a0 e1                                      mov r6, r2
007fc938  00 70 a0 e1                                      mov r7, r0
007fc93c  01 50 a0 e1                                      mov r5, r1
007fc940  bc fe ff eb                                      bl #0x7fc438
007fc944  00 30 50 e2                                      subs r3, r0, #0
007fc948  16 00 00 1a                                      bne #0x7fc9a8
007fc94c  02 10 a0 e3                                      mov r1, #2
007fc950  07 0d a0 e3                                      mov r0, #0x1c0
007fc954  05 4f ec eb                                      bl #0x310570
007fc958  00 40 a0 e1                                      mov r4, r0
007fc95c  11 a4 00 eb                                      bl #0x8259a8
007fc960  07 00 a0 e1                                      mov r0, r7
007fc964  05 10 a0 e1                                      mov r1, r5
007fc968  04 20 a0 e1                                      mov r2, r4
007fc96c  d7 ff ff eb                                      bl #0x7fc8d0
007fc970  00 70 50 e2                                      subs r7, r0, #0
007fc974  04 30 a0 e1                                      mov r3, r4
007fc978  07 00 00 aa                                      bge #0x7fc99c
007fc97c  00 00 54 e3                                      cmp r4, #0
007fc980  03 00 00 0a                                      beq #0x7fc994
007fc984  04 00 a0 e1                                      mov r0, r4
007fc988  00 30 94 e5                                      ldr r3, [r4]
007fc98c  0f e0 a0 e1                                      mov lr, pc
007fc990  04 f0 93 e5                                      ldr pc, [r3, #4]
007fc994  07 00 a0 e1                                      mov r0, r7
007fc998  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fc99c  00 00 54 e3                                      cmp r4, #0
007fc9a0  00 70 e0 03                                      mvneq r7, #0
007fc9a4  fa ff ff 0a                                      beq #0x7fc994
007fc9a8  03 00 a0 e1                                      mov r0, r3
007fc9ac  05 10 a0 e1                                      mov r1, r5
007fc9b0  06 20 a0 e1                                      mov r2, r6
007fc9b4  00 30 93 e5                                      ldr r3, [r3]
007fc9b8  0f e0 a0 e1                                      mov lr, pc
007fc9bc  08 f0 93 e5                                      ldr pc, [r3, #8]
007fc9c0  00 70 a0 e1                                      mov r7, r0
007fc9c4  07 00 a0 e1                                      mov r0, r7
007fc9c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fc9cc, declared_size=168, range_size=168, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager6AcceptEiR10CNetworkIdy
; demangled: CConnectionManager::Accept(int, CNetworkId&, unsigned long long)
; decoder-mode: arm
007fc9cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fc9d0  0c d0 4d e2                                      sub sp, sp, #0xc
007fc9d4  02 60 a0 e1                                      mov r6, r2
007fc9d8  00 70 a0 e1                                      mov r7, r0
007fc9dc  01 50 a0 e1                                      mov r5, r1
007fc9e0  94 fe ff eb                                      bl #0x7fc438
007fc9e4  00 30 50 e2                                      subs r3, r0, #0
007fc9e8  17 00 00 1a                                      bne #0x7fca4c
007fc9ec  02 10 a0 e3                                      mov r1, #2
007fc9f0  07 0d a0 e3                                      mov r0, #0x1c0
007fc9f4  dd 4e ec eb                                      bl #0x310570
007fc9f8  00 40 a0 e1                                      mov r4, r0
007fc9fc  e9 a3 00 eb                                      bl #0x8259a8
007fca00  07 00 a0 e1                                      mov r0, r7
007fca04  05 10 a0 e1                                      mov r1, r5
007fca08  04 20 a0 e1                                      mov r2, r4
007fca0c  af ff ff eb                                      bl #0x7fc8d0
007fca10  00 70 50 e2                                      subs r7, r0, #0
007fca14  04 30 a0 e1                                      mov r3, r4
007fca18  08 00 00 aa                                      bge #0x7fca40
007fca1c  00 00 54 e3                                      cmp r4, #0
007fca20  03 00 00 0a                                      beq #0x7fca34
007fca24  04 00 a0 e1                                      mov r0, r4
007fca28  00 30 94 e5                                      ldr r3, [r4]
007fca2c  0f e0 a0 e1                                      mov lr, pc
007fca30  04 f0 93 e5                                      ldr pc, [r3, #4]
007fca34  07 00 a0 e1                                      mov r0, r7
007fca38  0c d0 8d e2                                      add sp, sp, #0xc
007fca3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007fca40  00 00 54 e3                                      cmp r4, #0
007fca44  00 70 e0 03                                      mvneq r7, #0
007fca48  f9 ff ff 0a                                      beq #0x7fca34
007fca4c  03 00 a0 e1                                      mov r0, r3
007fca50  05 10 a0 e1                                      mov r1, r5
007fca54  00 30 93 e5                                      ldr r3, [r3]
007fca58  d0 42 cd e1                                      ldrd r4, r5, [sp, #0x20]
007fca5c  06 20 a0 e1                                      mov r2, r6
007fca60  f0 40 cd e1                                      strd r4, r5, [sp]
007fca64  0f e0 a0 e1                                      mov lr, pc
007fca68  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007fca6c  00 70 a0 e1                                      mov r7, r0
007fca70  ef ff ff ea                                      b #0x7fca34

; FUNCTION 0x007fca74, declared_size=184, range_size=184, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager24ProcessConnectionRequestER10CNetworkIdR12NetBitStream
; demangled: CConnectionManager::ProcessConnectionRequest(CNetworkId&, NetBitStream&)
; decoder-mode: arm
007fca74  30 40 2d e9                                      push {r4, r5, lr}
007fca78  1c d0 4d e2                                      sub sp, sp, #0x1c
007fca7c  00 40 a0 e1                                      mov r4, r0
007fca80  01 50 a0 e1                                      mov r5, r1
007fca84  02 00 a0 e1                                      mov r0, r2
007fca88  08 10 8d e2                                      add r1, sp, #8
007fca8c  10 20 a0 e3                                      mov r2, #0x10
007fca90  64 48 00 eb                                      bl #0x80ec28
007fca94  08 10 9d e5                                      ldr r1, [sp, #8]
007fca98  00 00 51 e3                                      cmp r1, #0
007fca9c  07 00 00 ba                                      blt #0x7fcac0
007fcaa0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007fcaa4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007fcaa8  04 00 a0 e1                                      mov r0, r4
007fcaac  05 20 a0 e1                                      mov r2, r5
007fcab0  08 10 8d e8                                      stm sp, {r3, ip}
007fcab4  c4 ff ff eb                                      bl #0x7fc9cc
007fcab8  1c d0 8d e2                                      add sp, sp, #0x1c
007fcabc  30 80 bd e8                                      pop {r4, r5, pc}
007fcac0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007fcac4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007fcac8  04 10 a0 e1                                      mov r1, r4
007fcacc  00 00 a0 e3                                      mov r0, #0
007fcad0  01 00 00 ea                                      b #0x7fcadc
007fcad4  20 00 50 e3                                      cmp r0, #0x20
007fcad8  0d 00 00 0a                                      beq #0x7fcb14
007fcadc  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
007fcae0  01 00 80 e2                                      add r0, r0, #1
007fcae4  04 10 81 e2                                      add r1, r1, #4
007fcae8  00 00 52 e3                                      cmp r2, #0
007fcaec  f8 ff ff 0a                                      beq #0x7fcad4
007fcaf0  b8 e1 92 e5                                      ldr lr, [r2, #0x1b8]
007fcaf4  03 00 5e e1                                      cmp lr, r3
007fcaf8  f5 ff ff 1a                                      bne #0x7fcad4
007fcafc  bc e1 92 e5                                      ldr lr, [r2, #0x1bc]
007fcb00  0c 00 5e e1                                      cmp lr, ip
007fcb04  f2 ff ff 1a                                      bne #0x7fcad4
007fcb08  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
007fcb0c  00 00 51 e3                                      cmp r1, #0
007fcb10  e4 ff ff aa                                      bge #0x7fcaa8
007fcb14  1c 11 00 eb                                      bl #0x800f8c
007fcb18  00 30 90 e5                                      ldr r3, [r0]
007fcb1c  0f e0 a0 e1                                      mov lr, pc
007fcb20  ac f0 93 e5                                      ldr pc, [r3, #0xac]
007fcb24  00 10 a0 e1                                      mov r1, r0
007fcb28  dc ff ff ea                                      b #0x7fcaa0

; FUNCTION 0x007fcb2c, declared_size=220, range_size=220, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager22PacketReceiverCallbackER10CNetworkIdPci
; demangled: CConnectionManager::PacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
007fcb2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fcb30  28 d0 4d e2                                      sub sp, sp, #0x28
007fcb34  04 40 8d e2                                      add r4, sp, #4
007fcb38  03 50 a0 e1                                      mov r5, r3
007fcb3c  02 80 a0 e1                                      mov r8, r2
007fcb40  00 70 a0 e1                                      mov r7, r0
007fcb44  01 60 a0 e1                                      mov r6, r1
007fcb48  04 00 a0 e1                                      mov r0, r4
007fcb4c  03 10 a0 e1                                      mov r1, r3
007fcb50  6c 47 00 eb                                      bl #0x80e908
007fcb54  04 00 a0 e1                                      mov r0, r4
007fcb58  08 10 a0 e1                                      mov r1, r8
007fcb5c  05 20 a0 e1                                      mov r2, r5
007fcb60  b5 48 00 eb                                      bl #0x80ee3c
007fcb64  04 00 a0 e1                                      mov r0, r4
007fcb68  24 10 8d e2                                      add r1, sp, #0x24
007fcb6c  01 20 a0 e3                                      mov r2, #1
007fcb70  2c 48 00 eb                                      bl #0x80ec28
007fcb74  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
007fcb78  04 00 53 e3                                      cmp r3, #4
007fcb7c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007fcb80  08 00 00 ea                                      b #0x7fcba8
007fcb84  0b 00 00 ea                                      b #0x7fcbb8
007fcb88  0f 00 00 ea                                      b #0x7fcbcc
007fcb8c  13 00 00 ea                                      b #0x7fcbe0
007fcb90  17 00 00 ea                                      b #0x7fcbf4
007fcb94  ff ff ff ea                                      b #0x7fcb98
007fcb98  07 00 a0 e1                                      mov r0, r7
007fcb9c  06 10 a0 e1                                      mov r1, r6
007fcba0  04 20 a0 e1                                      mov r2, r4
007fcba4  2e ff ff eb                                      bl #0x7fc864
007fcba8  04 00 a0 e1                                      mov r0, r4
007fcbac  f7 46 00 eb                                      bl #0x80e790
007fcbb0  28 d0 8d e2                                      add sp, sp, #0x28
007fcbb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fcbb8  07 00 a0 e1                                      mov r0, r7
007fcbbc  06 10 a0 e1                                      mov r1, r6
007fcbc0  04 20 a0 e1                                      mov r2, r4
007fcbc4  aa ff ff eb                                      bl #0x7fca74
007fcbc8  f6 ff ff ea                                      b #0x7fcba8
007fcbcc  07 00 a0 e1                                      mov r0, r7
007fcbd0  06 10 a0 e1                                      mov r1, r6
007fcbd4  04 20 a0 e1                                      mov r2, r4
007fcbd8  62 fe ff eb                                      bl #0x7fc568
007fcbdc  f1 ff ff ea                                      b #0x7fcba8
007fcbe0  07 00 a0 e1                                      mov r0, r7
007fcbe4  06 10 a0 e1                                      mov r1, r6
007fcbe8  04 20 a0 e1                                      mov r2, r4
007fcbec  45 fe ff eb                                      bl #0x7fc508
007fcbf0  ec ff ff ea                                      b #0x7fcba8
007fcbf4  07 00 a0 e1                                      mov r0, r7
007fcbf8  06 10 a0 e1                                      mov r1, r6
007fcbfc  04 20 a0 e1                                      mov r2, r4
007fcc00  0a ff ff eb                                      bl #0x7fc830
007fcc04  e7 ff ff ea                                      b #0x7fcba8

; FUNCTION 0x007fcc08, declared_size=40, range_size=40, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager23sPacketReceiverCallbackER10CNetworkIdPci
; demangled: CConnectionManager::sPacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
007fcc08  70 40 2d e9                                      push {r4, r5, r6, lr}
007fcc0c  01 50 a0 e1                                      mov r5, r1
007fcc10  02 40 a0 e1                                      mov r4, r2
007fcc14  00 60 a0 e1                                      mov r6, r0
007fcc18  4d fc ff eb                                      bl #0x7fbd54
007fcc1c  06 10 a0 e1                                      mov r1, r6
007fcc20  05 20 a0 e1                                      mov r2, r5
007fcc24  04 30 a0 e1                                      mov r3, r4
007fcc28  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fcc2c  be ff ff ea                                      b #0x7fcb2c

; FUNCTION 0x007fcc30, declared_size=208, range_size=208, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager6UpdateEv
; demangled: CConnectionManager::Update()
; decoder-mode: arm
007fcc30  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fcc34  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
007fcc38  00 80 a0 e1                                      mov r8, r0
007fcc3c  00 50 a0 e3                                      mov r5, #0
007fcc40  6e 77 00 eb                                      bl #0x81aa00
007fcc44  16 78 00 eb                                      bl #0x81aca4
007fcc48  ac 70 9f e5                                      ldr r7, [pc, #0xac]
007fcc4c  08 40 a0 e1                                      mov r4, r8
007fcc50  05 a0 a0 e1                                      mov sl, r5
007fcc54  06 60 8f e0                                      add r6, pc, r6
007fcc58  02 00 00 ea                                      b #0x7fcc68
007fcc5c  20 00 55 e3                                      cmp r5, #0x20
007fcc60  04 40 84 e2                                      add r4, r4, #4
007fcc64  1d 00 00 0a                                      beq #0x7fcce0
007fcc68  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fcc6c  01 50 85 e2                                      add r5, r5, #1
007fcc70  00 00 53 e2                                      subs r0, r3, #0
007fcc74  f8 ff ff 0a                                      beq #0x7fcc5c
007fcc78  00 30 93 e5                                      ldr r3, [r3]
007fcc7c  0f e0 a0 e1                                      mov lr, pc
007fcc80  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007fcc84  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fcc88  18 30 93 e5                                      ldr r3, [r3, #0x18]
007fcc8c  01 00 53 e3                                      cmp r3, #1
007fcc90  f1 ff ff 1a                                      bne #0x7fcc5c
007fcc94  59 77 00 eb                                      bl #0x81aa00
007fcc98  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007fcc9c  20 10 81 e2                                      add r1, r1, #0x20
007fcca0  e6 79 00 eb                                      bl #0x81b440
007fcca4  07 00 96 e7                                      ldr r0, [r6, r7]
007fcca8  af 45 00 eb                                      bl #0x80e36c
007fccac  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fccb0  00 00 53 e3                                      cmp r3, #0
007fccb4  04 00 00 0a                                      beq #0x7fcccc
007fccb8  03 00 a0 e1                                      mov r0, r3
007fccbc  00 30 93 e5                                      ldr r3, [r3]
007fccc0  0f e0 a0 e1                                      mov lr, pc
007fccc4  04 f0 93 e5                                      ldr pc, [r3, #4]
007fccc8  1c a0 84 e5                                      str sl, [r4, #0x1c]
007fcccc  07 00 96 e7                                      ldr r0, [r6, r7]
007fccd0  a4 45 00 eb                                      bl #0x80e368
007fccd4  20 00 55 e3                                      cmp r5, #0x20
007fccd8  04 40 84 e2                                      add r4, r4, #4
007fccdc  e1 ff ff 1a                                      bne #0x7fcc68
007fcce0  08 00 a0 e1                                      mov r0, r8
007fcce4  e0 fc ff eb                                      bl #0x7fc06c
007fcce8  08 00 a0 e1                                      mov r0, r8
007fccec  ea fc ff eb                                      bl #0x7fc09c
007fccf0  00 00 a0 e3                                      mov r0, #0
007fccf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007fccf8  3c 7e 19 00 74 36 00 00                          .byte 0x3c, 0x7e, 0x19, 0x00, 0x74, 0x36, 0x00, 0x00

; FUNCTION 0x007fcd04, declared_size=148, range_size=148, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager17TerminateInternalEv
; demangled: CConnectionManager::TerminateInternal()
; decoder-mode: arm
007fcd04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fcd08  80 60 9f e5                                      ldr r6, [pc, #0x80]
007fcd0c  80 70 9f e5                                      ldr r7, [pc, #0x80]
007fcd10  00 50 a0 e3                                      mov r5, #0
007fcd14  06 60 8f e0                                      add r6, pc, r6
007fcd18  a8 50 c0 e5                                      strb r5, [r0, #0xa8]
007fcd1c  00 90 a0 e1                                      mov sb, r0
007fcd20  4b fc ff eb                                      bl #0x7fbe54
007fcd24  07 80 96 e7                                      ldr r8, [r6, r7]
007fcd28  09 40 a0 e1                                      mov r4, sb
007fcd2c  05 a0 a0 e1                                      mov sl, r5
007fcd30  08 00 a0 e1                                      mov r0, r8
007fcd34  8c 45 00 eb                                      bl #0x80e36c
007fcd38  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fcd3c  01 50 85 e2                                      add r5, r5, #1
007fcd40  00 00 53 e3                                      cmp r3, #0
007fcd44  04 00 00 0a                                      beq #0x7fcd5c
007fcd48  03 00 a0 e1                                      mov r0, r3
007fcd4c  00 30 93 e5                                      ldr r3, [r3]
007fcd50  0f e0 a0 e1                                      mov lr, pc
007fcd54  04 f0 93 e5                                      ldr pc, [r3, #4]
007fcd58  1c a0 84 e5                                      str sl, [r4, #0x1c]
007fcd5c  07 00 96 e7                                      ldr r0, [r6, r7]
007fcd60  80 45 00 eb                                      bl #0x80e368
007fcd64  20 00 55 e3                                      cmp r5, #0x20
007fcd68  04 40 84 e2                                      add r4, r4, #4
007fcd6c  ef ff ff 1a                                      bne #0x7fcd30
007fcd70  2d 77 00 eb                                      bl #0x81aa2c
007fcd74  05 00 a0 e3                                      mov r0, #5
007fcd78  6f fd ff eb                                      bl #0x7fc33c
007fcd7c  00 00 a0 e3                                      mov r0, #0
007fcd80  6d fd ff eb                                      bl #0x7fc33c
007fcd84  08 00 89 e2                                      add r0, sb, #8
007fcd88  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
007fcd8c  a9 05 00 ea                                      b #0x7fe438
; mapping-symbol data/literal pool
007fcd90  7c 7d 19 00 74 36 00 00                          .byte 0x7c, 0x7d, 0x19, 0x00, 0x74, 0x36, 0x00, 0x00

; FUNCTION 0x007fcd98, declared_size=84, range_size=84, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager9TerminateEv
; demangled: CConnectionManager::Terminate()
; decoder-mode: arm
007fcd98  44 30 9f e5                                      ldr r3, [pc, #0x44]
007fcd9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
007fcda0  10 40 2d e9                                      push {r4, lr}
007fcda4  03 30 8f e0                                      add r3, pc, r3
007fcda8  02 40 93 e7                                      ldr r4, [r3, r2]
007fcdac  00 00 94 e5                                      ldr r0, [r4]
007fcdb0  00 00 50 e3                                      cmp r0, #0
007fcdb4  09 00 00 0a                                      beq #0x7fcde0
007fcdb8  d1 ff ff eb                                      bl #0x7fcd04
007fcdbc  00 30 94 e5                                      ldr r3, [r4]
007fcdc0  00 00 53 e3                                      cmp r3, #0
007fcdc4  05 00 00 0a                                      beq #0x7fcde0
007fcdc8  03 00 a0 e1                                      mov r0, r3
007fcdcc  00 30 93 e5                                      ldr r3, [r3]
007fcdd0  0f e0 a0 e1                                      mov lr, pc
007fcdd4  04 f0 93 e5                                      ldr pc, [r3, #4]
007fcdd8  00 30 a0 e3                                      mov r3, #0
007fcddc  00 30 84 e5                                      str r3, [r4]
007fcde0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fcde4  ec 7c 19 00 78 3d 00 00                          .byte 0xec, 0x7c, 0x19, 0x00, 0x78, 0x3d, 0x00, 0x00

; FUNCTION 0x007fcdec, declared_size=212, range_size=212, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager18InitializeInternalEv
; demangled: CConnectionManager::InitializeInternal()
; decoder-mode: arm
007fcdec  70 40 2d e9                                      push {r4, r5, r6, lr}
007fcdf0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
007fcdf4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
007fcdf8  00 40 a0 e1                                      mov r4, r0
007fcdfc  05 50 8f e0                                      add r5, pc, r5
007fce00  03 20 95 e7                                      ldr r2, [r5, r3]
007fce04  00 10 a0 e3                                      mov r1, #0
007fce08  05 00 a0 e3                                      mov r0, #5
007fce0c  61 fc ff eb                                      bl #0x7fbf98
007fce10  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
007fce14  00 00 a0 e3                                      mov r0, #0
007fce18  00 10 a0 e1                                      mov r1, r0
007fce1c  03 20 95 e7                                      ldr r2, [r5, r3]
007fce20  5c fc ff eb                                      bl #0x7fbf98
007fce24  58 10 00 eb                                      bl #0x800f8c
007fce28  00 10 a0 e3                                      mov r1, #0
007fce2c  00 30 90 e5                                      ldr r3, [r0]
007fce30  0f e0 a0 e1                                      mov lr, pc
007fce34  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007fce38  9c 00 84 e5                                      str r0, [r4, #0x9c]
007fce3c  52 10 00 eb                                      bl #0x800f8c
007fce40  01 10 a0 e3                                      mov r1, #1
007fce44  00 30 90 e5                                      ldr r3, [r0]
007fce48  0f e0 a0 e1                                      mov lr, pc
007fce4c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007fce50  a0 00 84 e5                                      str r0, [r4, #0xa0]
007fce54  4c 10 00 eb                                      bl #0x800f8c
007fce58  02 10 a0 e3                                      mov r1, #2
007fce5c  00 30 90 e5                                      ldr r3, [r0]
007fce60  0f e0 a0 e1                                      mov lr, pc
007fce64  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007fce68  80 20 a0 e3                                      mov r2, #0x80
007fce6c  00 10 a0 e3                                      mov r1, #0
007fce70  a4 00 84 e5                                      str r0, [r4, #0xa4]
007fce74  1c 00 84 e2                                      add r0, r4, #0x1c
007fce78  78 45 ec eb                                      bl #0x30e460
007fce7c  5f 7a 00 eb                                      bl #0x81b800
007fce80  de 76 00 eb                                      bl #0x81aa00
007fce84  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007fce88  ed 79 00 eb                                      bl #0x81b644
007fce8c  db 76 00 eb                                      bl #0x81aa00
007fce90  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
007fce94  ea 79 00 eb                                      bl #0x81b644
007fce98  d8 76 00 eb                                      bl #0x81aa00
007fce9c  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007fcea0  e7 79 00 eb                                      bl #0x81b644
007fcea4  01 30 a0 e3                                      mov r3, #1
007fcea8  a8 30 c4 e5                                      strb r3, [r4, #0xa8]
007fceac  00 00 a0 e3                                      mov r0, #0
007fceb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fceb4  94 7c 19 00 2c 2b 00 00 50 4c 00 00              .byte 0x94, 0x7c, 0x19, 0x00, 0x2c, 0x2b, 0x00, 0x00, 0x50, 0x4c, 0x00, 0x00

; FUNCTION 0x007fcec0, declared_size=92, range_size=92, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager10InitializeEv
; demangled: CConnectionManager::Initialize()
; decoder-mode: arm
007fcec0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007fcec4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007fcec8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fcecc  03 30 8f e0                                      add r3, pc, r3
007fced0  02 40 93 e7                                      ldr r4, [r3, r2]
007fced4  00 50 94 e5                                      ldr r5, [r4]
007fced8  00 00 55 e3                                      cmp r5, #0
007fcedc  02 00 00 0a                                      beq #0x7fceec
007fcee0  05 00 a0 e1                                      mov r0, r5
007fcee4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fcee8  bf ff ff ea                                      b #0x7fcdec
007fceec  02 10 a0 e3                                      mov r1, #2
007fcef0  ac 00 a0 e3                                      mov r0, #0xac
007fcef4  9d 4d ec eb                                      bl #0x310570
007fcef8  00 50 a0 e1                                      mov r5, r0
007fcefc  69 fc ff eb                                      bl #0x7fc0a8
007fcf00  00 00 55 e3                                      cmp r5, #0
007fcf04  00 50 84 e5                                      str r5, [r4]
007fcf08  f4 ff ff 1a                                      bne #0x7fcee0
007fcf0c  00 00 e0 e3                                      mvn r0, #0
007fcf10  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fcf14  c4 7b 19 00 78 3d 00 00                          .byte 0xc4, 0x7b, 0x19, 0x00, 0x78, 0x3d, 0x00, 0x00

; FUNCTION 0x007fcf94, declared_size=552, range_size=552, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager13GetServerPingEv
; demangled: CConnectionManager::GetServerPing()
; decoder-mode: arm
007fcf94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fcf98  00 50 a0 e1                                      mov r5, r0
007fcf9c  fa 0f 00 eb                                      bl #0x800f8c
007fcfa0  4e 05 00 eb                                      bl #0x7fe4e0
007fcfa4  00 40 50 e2                                      subs r4, r0, #0
007fcfa8  02 00 00 0a                                      beq #0x7fcfb8
007fcfac  00 40 a0 e3                                      mov r4, #0
007fcfb0  04 00 a0 e1                                      mov r0, r4
007fcfb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fcfb8  f3 0f 00 eb                                      bl #0x800f8c
007fcfbc  00 30 90 e5                                      ldr r3, [r0]
007fcfc0  0f e0 a0 e1                                      mov lr, pc
007fcfc4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fcfc8  00 10 a0 e1                                      mov r1, r0
007fcfcc  05 00 a0 e1                                      mov r0, r5
007fcfd0  18 fd ff eb                                      bl #0x7fc438
007fcfd4  00 60 50 e2                                      subs r6, r0, #0
007fcfd8  f3 ff ff 0a                                      beq #0x7fcfac
007fcfdc  5f 5f 86 e2                                      add r5, r6, #0x17c
007fcfe0  05 00 a0 e1                                      mov r0, r5
007fcfe4  d6 44 00 eb                                      bl #0x80e344
007fcfe8  d0 45 ec eb                                      bl #0x30e730
007fcfec  90 31 96 e5                                      ldr r3, [r6, #0x190]
007fcff0  00 00 53 e3                                      cmp r3, #0
007fcff4  23 00 00 0a                                      beq #0x7fd088
007fcff8  04 10 a0 e1                                      mov r1, r4
007fcffc  80 43 0c e3                                      movw r4, #0xc380
007fd000  88 e1 96 e5                                      ldr lr, [r6, #0x188]
007fd004  c9 41 40 e3                                      movt r4, #0x1c9
007fd008  06 6d 86 e2                                      add r6, r6, #0x180
007fd00c  01 30 a0 e1                                      mov r3, r1
007fd010  0e 00 56 e1                                      cmp r6, lr
007fd014  13 00 00 0a                                      beq #0x7fd068
007fd018  00 70 d6 e5                                      ldrb r7, [r6]
007fd01c  00 00 57 e3                                      cmp r7, #0
007fd020  04 00 00 1a                                      bne #0x7fd038
007fd024  04 20 96 e5                                      ldr r2, [r6, #4]
007fd028  04 20 92 e5                                      ldr r2, [r2, #4]
007fd02c  02 00 56 e1                                      cmp r6, r2
007fd030  0c c0 96 05                                      ldreq ip, [r6, #0xc]
007fd034  07 00 00 0a                                      beq #0x7fd058
007fd038  08 c0 96 e5                                      ldr ip, [r6, #8]
007fd03c  00 00 5c e3                                      cmp ip, #0
007fd040  01 00 00 1a                                      bne #0x7fd04c
007fd044  50 00 00 ea                                      b #0x7fd18c
007fd048  02 c0 a0 e1                                      mov ip, r2
007fd04c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
007fd050  00 00 52 e3                                      cmp r2, #0
007fd054  fb ff ff 1a                                      bne #0x7fd048
007fd058  10 20 9c e5                                      ldr r2, [ip, #0x10]
007fd05c  00 20 62 e0                                      rsb r2, r2, r0
007fd060  04 00 52 e1                                      cmp r2, r4
007fd064  0c 00 00 da                                      ble #0x7fd09c
007fd068  00 00 51 e3                                      cmp r1, #0
007fd06c  05 00 00 0a                                      beq #0x7fd088
007fd070  03 00 a0 e1                                      mov r0, r3
007fd074  8a 44 ec eb                                      bl #0x30e2a4
007fd078  39 46 ec eb                                      bl #0x30e964
007fd07c  12 45 ec eb                                      bl #0x30e4cc
007fd080  00 40 a0 e1                                      mov r4, r0
007fd084  00 00 00 ea                                      b #0x7fd08c
007fd088  00 40 a0 e3                                      mov r4, #0
007fd08c  05 00 a0 e1                                      mov r0, r5
007fd090  ac 44 00 eb                                      bl #0x80e348
007fd094  04 00 a0 e1                                      mov r0, r4
007fd098  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fd09c  00 00 57 e3                                      cmp r7, #0
007fd0a0  04 00 00 1a                                      bne #0x7fd0b8
007fd0a4  04 20 96 e5                                      ldr r2, [r6, #4]
007fd0a8  04 20 92 e5                                      ldr r2, [r2, #4]
007fd0ac  02 00 56 e1                                      cmp r6, r2
007fd0b0  0c c0 96 05                                      ldreq ip, [r6, #0xc]
007fd0b4  07 00 00 0a                                      beq #0x7fd0d8
007fd0b8  08 c0 96 e5                                      ldr ip, [r6, #8]
007fd0bc  00 00 5c e3                                      cmp ip, #0
007fd0c0  01 00 00 1a                                      bne #0x7fd0cc
007fd0c4  24 00 00 ea                                      b #0x7fd15c
007fd0c8  02 c0 a0 e1                                      mov ip, r2
007fd0cc  0c 20 9c e5                                      ldr r2, [ip, #0xc]
007fd0d0  00 00 52 e3                                      cmp r2, #0
007fd0d4  fb ff ff 1a                                      bne #0x7fd0c8
007fd0d8  14 20 9c e5                                      ldr r2, [ip, #0x14]
007fd0dc  00 00 57 e3                                      cmp r7, #0
007fd0e0  01 10 81 e2                                      add r1, r1, #1
007fd0e4  02 30 83 e0                                      add r3, r3, r2
007fd0e8  04 00 00 1a                                      bne #0x7fd100
007fd0ec  04 20 96 e5                                      ldr r2, [r6, #4]
007fd0f0  04 20 92 e5                                      ldr r2, [r2, #4]
007fd0f4  02 00 56 e1                                      cmp r6, r2
007fd0f8  0c c0 96 05                                      ldreq ip, [r6, #0xc]
007fd0fc  07 00 00 0a                                      beq #0x7fd120
007fd100  08 c0 96 e5                                      ldr ip, [r6, #8]
007fd104  00 00 5c e3                                      cmp ip, #0
007fd108  01 00 00 1a                                      bne #0x7fd114
007fd10c  05 00 00 ea                                      b #0x7fd128
007fd110  02 c0 a0 e1                                      mov ip, r2
007fd114  0c 20 9c e5                                      ldr r2, [ip, #0xc]
007fd118  00 00 52 e3                                      cmp r2, #0
007fd11c  fb ff ff 1a                                      bne #0x7fd110
007fd120  0c 60 a0 e1                                      mov r6, ip
007fd124  b9 ff ff ea                                      b #0x7fd010
007fd128  04 c0 96 e5                                      ldr ip, [r6, #4]
007fd12c  08 20 9c e5                                      ldr r2, [ip, #8]
007fd130  02 00 56 e1                                      cmp r6, r2
007fd134  01 00 00 0a                                      beq #0x7fd140
007fd138  f8 ff ff ea                                      b #0x7fd120
007fd13c  02 c0 a0 e1                                      mov ip, r2
007fd140  04 20 9c e5                                      ldr r2, [ip, #4]
007fd144  08 60 92 e5                                      ldr r6, [r2, #8]
007fd148  0c 00 56 e1                                      cmp r6, ip
007fd14c  fa ff ff 0a                                      beq #0x7fd13c
007fd150  02 c0 a0 e1                                      mov ip, r2
007fd154  0c 60 a0 e1                                      mov r6, ip
007fd158  ac ff ff ea                                      b #0x7fd010
007fd15c  04 c0 96 e5                                      ldr ip, [r6, #4]
007fd160  08 20 9c e5                                      ldr r2, [ip, #8]
007fd164  02 00 56 e1                                      cmp r6, r2
007fd168  01 00 00 0a                                      beq #0x7fd174
007fd16c  d9 ff ff ea                                      b #0x7fd0d8
007fd170  02 c0 a0 e1                                      mov ip, r2
007fd174  04 20 9c e5                                      ldr r2, [ip, #4]
007fd178  08 80 92 e5                                      ldr r8, [r2, #8]
007fd17c  0c 00 58 e1                                      cmp r8, ip
007fd180  fa ff ff 0a                                      beq #0x7fd170
007fd184  02 c0 a0 e1                                      mov ip, r2
007fd188  d2 ff ff ea                                      b #0x7fd0d8
007fd18c  04 c0 96 e5                                      ldr ip, [r6, #4]
007fd190  08 20 9c e5                                      ldr r2, [ip, #8]
007fd194  02 00 56 e1                                      cmp r6, r2
007fd198  01 00 00 0a                                      beq #0x7fd1a4
007fd19c  ad ff ff ea                                      b #0x7fd058
007fd1a0  02 c0 a0 e1                                      mov ip, r2
007fd1a4  04 20 9c e5                                      ldr r2, [ip, #4]
007fd1a8  08 80 92 e5                                      ldr r8, [r2, #8]
007fd1ac  0c 00 58 e1                                      cmp r8, ip
007fd1b0  fa ff ff 0a                                      beq #0x7fd1a0
007fd1b4  02 c0 a0 e1                                      mov ip, r2
007fd1b8  a6 ff ff ea                                      b #0x7fd058

; FUNCTION 0x007fd284, declared_size=236, range_size=236, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManager19GetConnMemberIdListEb
; demangled: CConnectionManager::GetConnMemberIdList(bool)
; decoder-mode: arm
007fd284  70 40 2d e9                                      push {r4, r5, r6, lr}
007fd288  00 30 a0 e3                                      mov r3, #0
007fd28c  08 d0 4d e2                                      sub sp, sp, #8
007fd290  08 30 80 e5                                      str r3, [r0, #8]
007fd294  00 30 80 e5                                      str r3, [r0]
007fd298  04 30 80 e5                                      str r3, [r0, #4]
007fd29c  01 60 a0 e1                                      mov r6, r1
007fd2a0  02 50 a0 e1                                      mov r5, r2
007fd2a4  00 40 a0 e1                                      mov r4, r0
007fd2a8  37 0f 00 eb                                      bl #0x800f8c
007fd2ac  8b 04 00 eb                                      bl #0x7fe4e0
007fd2b0  00 00 50 e3                                      cmp r0, #0
007fd2b4  01 00 00 1a                                      bne #0x7fd2c0
007fd2b8  00 00 55 e3                                      cmp r5, #0
007fd2bc  1a 00 00 0a                                      beq #0x7fd32c
007fd2c0  00 50 a0 e3                                      mov r5, #0
007fd2c4  08 00 00 ea                                      b #0x7fd2ec
007fd2c8  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
007fd2cc  00 30 81 e5                                      str r3, [r1]
007fd2d0  04 30 94 e5                                      ldr r3, [r4, #4]
007fd2d4  04 30 83 e2                                      add r3, r3, #4
007fd2d8  04 30 84 e5                                      str r3, [r4, #4]
007fd2dc  01 50 85 e2                                      add r5, r5, #1
007fd2e0  20 00 55 e3                                      cmp r5, #0x20
007fd2e4  04 60 86 e2                                      add r6, r6, #4
007fd2e8  0c 00 00 0a                                      beq #0x7fd320
007fd2ec  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007fd2f0  00 00 52 e3                                      cmp r2, #0
007fd2f4  f8 ff ff 0a                                      beq #0x7fd2dc
007fd2f8  0a 00 94 e9                                      ldmib r4, {r1, r3}
007fd2fc  03 00 51 e1                                      cmp r1, r3
007fd300  f0 ff ff 1a                                      bne #0x7fd2c8
007fd304  1c 20 82 e2                                      add r2, r2, #0x1c
007fd308  04 00 a0 e1                                      mov r0, r4
007fd30c  01 50 85 e2                                      add r5, r5, #1
007fd310  a9 ff ff eb                                      bl #0x7fd1bc
007fd314  20 00 55 e3                                      cmp r5, #0x20
007fd318  04 60 86 e2                                      add r6, r6, #4
007fd31c  f2 ff ff 1a                                      bne #0x7fd2ec
007fd320  04 00 a0 e1                                      mov r0, r4
007fd324  08 d0 8d e2                                      add sp, sp, #8
007fd328  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fd32c  16 0f 00 eb                                      bl #0x800f8c
007fd330  00 30 90 e5                                      ldr r3, [r0]
007fd334  0f e0 a0 e1                                      mov lr, pc
007fd338  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fd33c  0a 00 94 e9                                      ldmib r4, {r1, r3}
007fd340  04 00 8d e5                                      str r0, [sp, #4]
007fd344  03 00 51 e1                                      cmp r1, r3
007fd348  04 00 00 0a                                      beq #0x7fd360
007fd34c  00 00 81 e5                                      str r0, [r1]
007fd350  04 30 94 e5                                      ldr r3, [r4, #4]
007fd354  04 30 83 e2                                      add r3, r3, #4
007fd358  04 30 84 e5                                      str r3, [r4, #4]
007fd35c  ef ff ff ea                                      b #0x7fd320
007fd360  04 00 a0 e1                                      mov r0, r4
007fd364  04 20 8d e2                                      add r2, sp, #4
007fd368  93 ff ff eb                                      bl #0x7fd1bc
007fd36c  eb ff ff ea                                      b #0x7fd320

; FUNCTION 0x007fd400, declared_size=84, range_size=84, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManagerD1Ev
; demangled: CConnectionManager::~CConnectionManager()
; decoder-mode: arm
007fd400  40 30 9f e5                                      ldr r3, [pc, #0x40]
007fd404  40 10 9f e5                                      ldr r1, [pc, #0x40]
007fd408  40 20 9f e5                                      ldr r2, [pc, #0x40]
007fd40c  03 30 8f e0                                      add r3, pc, r3
007fd410  01 10 93 e7                                      ldr r1, [r3, r1]
007fd414  02 20 93 e7                                      ldr r2, [r3, r2]
007fd418  10 40 2d e9                                      push {r4, lr}
007fd41c  08 10 81 e2                                      add r1, r1, #8
007fd420  00 40 a0 e1                                      mov r4, r0
007fd424  08 20 82 e2                                      add r2, r2, #8
007fd428  08 10 80 e4                                      str r1, [r0], #8
007fd42c  08 00 80 e2                                      add r0, r0, #8
007fd430  08 20 84 e5                                      str r2, [r4, #8]
007fd434  cd ff ff eb                                      bl #0x7fd370
007fd438  0c 00 84 e2                                      add r0, r4, #0xc
007fd43c  cb 43 00 eb                                      bl #0x80e370
007fd440  04 00 a0 e1                                      mov r0, r4
007fd444  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd448  84 76 19 00 54 1d 00 00 4c 0a 00 00              .byte 0x84, 0x76, 0x19, 0x00, 0x54, 0x1d, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fd454, declared_size=28, range_size=28, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManagerD0Ev
; demangled: CConnectionManager::~CConnectionManager()
; decoder-mode: arm
007fd454  10 40 2d e9                                      push {r4, lr}
007fd458  00 40 a0 e1                                      mov r4, r0
007fd45c  e7 ff ff eb                                      bl #0x7fd400
007fd460  04 00 a0 e1                                      mov r0, r4
007fd464  f5 4b ec eb                                      bl #0x310440
007fd468  04 00 a0 e1                                      mov r0, r4
007fd46c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fd4b4, declared_size=84, range_size=84, mode=arm
; class-group: CConnectionManager
; alias: _ZN18CConnectionManagerD2Ev
; demangled: CConnectionManager::~CConnectionManager()
; decoder-mode: arm
007fd4b4  40 30 9f e5                                      ldr r3, [pc, #0x40]
007fd4b8  40 10 9f e5                                      ldr r1, [pc, #0x40]
007fd4bc  40 20 9f e5                                      ldr r2, [pc, #0x40]
007fd4c0  03 30 8f e0                                      add r3, pc, r3
007fd4c4  01 10 93 e7                                      ldr r1, [r3, r1]
007fd4c8  02 20 93 e7                                      ldr r2, [r3, r2]
007fd4cc  10 40 2d e9                                      push {r4, lr}
007fd4d0  08 10 81 e2                                      add r1, r1, #8
007fd4d4  00 40 a0 e1                                      mov r4, r0
007fd4d8  08 20 82 e2                                      add r2, r2, #8
007fd4dc  08 10 80 e4                                      str r1, [r0], #8
007fd4e0  08 00 80 e2                                      add r0, r0, #8
007fd4e4  08 20 84 e5                                      str r2, [r4, #8]
007fd4e8  a0 ff ff eb                                      bl #0x7fd370
007fd4ec  0c 00 84 e2                                      add r0, r4, #0xc
007fd4f0  9e 43 00 eb                                      bl #0x80e370
007fd4f4  04 00 a0 e1                                      mov r0, r4
007fd4f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fd4fc  d0 75 19 00 54 1d 00 00 4c 0a 00 00              .byte 0xd0, 0x75, 0x19, 0x00, 0x54, 0x1d, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00
