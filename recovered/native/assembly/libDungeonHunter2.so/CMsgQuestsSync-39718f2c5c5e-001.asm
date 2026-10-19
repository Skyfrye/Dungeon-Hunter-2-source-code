; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4a8, declared_size=12, range_size=12, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZNK14CMsgQuestsSync11GetDataSizeEv
; demangled: CMsgQuestsSync::GetDataSize() const
; decoder-mode: arm
0031f4a8  50 00 90 e5                                      ldr r0, [r0, #0x50]
0031f4ac  08 00 80 e2                                      add r0, r0, #8
0031f4b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fbc0, declared_size=44, range_size=44, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSync9ResetDataEv
; demangled: CMsgQuestsSync::ResetData()
; decoder-mode: arm
0031fbc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031fbc4  00 40 a0 e1                                      mov r4, r0
0031fbc8  58 00 90 e5                                      ldr r0, [r0, #0x58]
0031fbcc  00 50 a0 e3                                      mov r5, #0
0031fbd0  50 50 84 e5                                      str r5, [r4, #0x50]
0031fbd4  05 00 50 e1                                      cmp r0, r5
0031fbd8  54 50 84 e5                                      str r5, [r4, #0x54]
0031fbdc  01 00 00 0a                                      beq #0x31fbe8
0031fbe0  16 c2 ff eb                                      bl #0x310440
0031fbe4  58 50 84 e5                                      str r5, [r4, #0x58]
0031fbe8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00320434, declared_size=112, range_size=112, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSync8ReadDataER12NetBitStream
; demangled: CMsgQuestsSync::ReadData(NetBitStream&)
; decoder-mode: arm
00320434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00320438  00 70 a0 e1                                      mov r7, r0
0032043c  50 30 97 e4                                      ldr r3, [r7], #0x50
00320440  01 50 a0 e1                                      mov r5, r1
00320444  00 40 a0 e1                                      mov r4, r0
00320448  0f e0 a0 e1                                      mov lr, pc
0032044c  08 f0 93 e5                                      ldr pc, [r3, #8]
00320450  07 10 a0 e1                                      mov r1, r7
00320454  00 60 a0 e1                                      mov r6, r0
00320458  08 20 a0 e3                                      mov r2, #8
0032045c  05 00 a0 e1                                      mov r0, r5
00320460  f0 b9 13 eb                                      bl #0x80ec28
00320464  58 00 94 e5                                      ldr r0, [r4, #0x58]
00320468  00 00 50 e3                                      cmp r0, #0
0032046c  02 00 00 0a                                      beq #0x32047c
00320470  f2 bf ff eb                                      bl #0x310440
00320474  00 30 a0 e3                                      mov r3, #0
00320478  58 30 84 e5                                      str r3, [r4, #0x58]
0032047c  02 10 a0 e3                                      mov r1, #2
00320480  50 00 94 e5                                      ldr r0, [r4, #0x50]
00320484  38 c0 ff eb                                      bl #0x31056c
00320488  50 20 94 e5                                      ldr r2, [r4, #0x50]
0032048c  00 10 a0 e1                                      mov r1, r0
00320490  58 00 84 e5                                      str r0, [r4, #0x58]
00320494  05 00 a0 e1                                      mov r0, r5
00320498  e2 b9 13 eb                                      bl #0x80ec28
0032049c  06 00 a0 e1                                      mov r0, r6
003204a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003204fc, declared_size=84, range_size=84, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSync9WriteDataER12NetBitStream
; demangled: CMsgQuestsSync::WriteData(NetBitStream&)
; decoder-mode: arm
003204fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00320500  58 60 90 e5                                      ldr r6, [r0, #0x58]
00320504  00 40 a0 e1                                      mov r4, r0
00320508  01 50 a0 e1                                      mov r5, r1
0032050c  00 00 56 e3                                      cmp r6, #0
00320510  0c 00 00 0a                                      beq #0x320548
00320514  00 70 a0 e1                                      mov r7, r0
00320518  50 30 97 e4                                      ldr r3, [r7], #0x50
0032051c  0f e0 a0 e1                                      mov lr, pc
00320520  08 f0 93 e5                                      ldr pc, [r3, #8]
00320524  07 10 a0 e1                                      mov r1, r7
00320528  08 20 a0 e3                                      mov r2, #8
0032052c  00 60 a0 e1                                      mov r6, r0
00320530  05 00 a0 e1                                      mov r0, r5
00320534  1b ba 13 eb                                      bl #0x80eda8
00320538  05 00 a0 e1                                      mov r0, r5
0032053c  50 20 94 e5                                      ldr r2, [r4, #0x50]
00320540  58 10 94 e5                                      ldr r1, [r4, #0x58]
00320544  17 ba 13 eb                                      bl #0x80eda8
00320548  06 00 a0 e1                                      mov r0, r6
0032054c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00325d28, declared_size=88, range_size=88, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSyncD1Ev
; demangled: CMsgQuestsSync::~CMsgQuestsSync()
; decoder-mode: arm
00325d28  70 40 2d e9                                      push {r4, r5, r6, lr}
00325d2c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00325d30  44 20 9f e5                                      ldr r2, [pc, #0x44]
00325d34  00 40 a0 e1                                      mov r4, r0
00325d38  03 30 8f e0                                      add r3, pc, r3
00325d3c  58 00 90 e5                                      ldr r0, [r0, #0x58]
00325d40  02 20 93 e7                                      ldr r2, [r3, r2]
00325d44  00 50 a0 e3                                      mov r5, #0
00325d48  05 00 50 e1                                      cmp r0, r5
00325d4c  08 20 82 e2                                      add r2, r2, #8
00325d50  00 20 84 e5                                      str r2, [r4]
00325d54  50 50 84 e5                                      str r5, [r4, #0x50]
00325d58  54 50 84 e5                                      str r5, [r4, #0x54]
00325d5c  01 00 00 0a                                      beq #0x325d68
00325d60  b6 a9 ff eb                                      bl #0x310440
00325d64  58 50 84 e5                                      str r5, [r4, #0x58]
00325d68  04 00 a0 e1                                      mov r0, r4
00325d6c  08 91 13 eb                                      bl #0x80a194
00325d70  04 00 a0 e1                                      mov r0, r4
00325d74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00325d78  58 ed 66 00 1c 43 00 00                          .byte 0x58, 0xed, 0x66, 0x00, 0x1c, 0x43, 0x00, 0x00

; FUNCTION 0x00325d80, declared_size=28, range_size=28, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSyncD0Ev
; demangled: CMsgQuestsSync::~CMsgQuestsSync()
; decoder-mode: arm
00325d80  10 40 2d e9                                      push {r4, lr}
00325d84  00 40 a0 e1                                      mov r4, r0
00325d88  e6 ff ff eb                                      bl #0x325d28
00325d8c  04 00 a0 e1                                      mov r0, r4
00325d90  aa a9 ff eb                                      bl #0x310440
00325d94  04 00 a0 e1                                      mov r0, r4
00325d98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032793c, declared_size=56, range_size=56, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSync13SetPropertiesEv
; demangled: CMsgQuestsSync::SetProperties()
; decoder-mode: arm
0032793c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00327940  10 40 2d e9                                      push {r4, lr}
00327944  01 10 8f e0                                      add r1, pc, r1
00327948  00 40 a0 e1                                      mov r4, r0
0032794c  0e 20 81 e2                                      add r2, r1, #0xe
00327950  14 00 80 e2                                      add r0, r0, #0x14
00327954  21 a4 ff eb                                      bl #0x3109e0
00327958  01 30 a0 e3                                      mov r3, #1
0032795c  00 20 a0 e3                                      mov r2, #0
00327960  30 30 c4 e5                                      strb r3, [r4, #0x30]
00327964  33 20 c4 e5                                      strb r2, [r4, #0x33]
00327968  2c 30 84 e5                                      str r3, [r4, #0x2c]
0032796c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327970  54 75 59 00                                      .byte 0x54, 0x75, 0x59, 0x00

; FUNCTION 0x003291f8, declared_size=120, range_size=120, mode=arm
; class-group: CMsgQuestsSync
; alias: _ZN14CMsgQuestsSyncC1Eb
; demangled: CMsgQuestsSync::CMsgQuestsSync(bool)
; decoder-mode: arm
003291f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003291fc  60 50 9f e5                                      ldr r5, [pc, #0x60]
00329200  01 20 a0 e1                                      mov r2, r1
00329204  5c 60 9f e5                                      ldr r6, [pc, #0x5c]
00329208  05 50 8f e0                                      add r5, pc, r5
0032920c  05 10 a0 e1                                      mov r1, r5
00329210  00 40 a0 e1                                      mov r4, r0
00329214  c9 84 13 eb                                      bl #0x80a540
00329218  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0032921c  06 60 8f e0                                      add r6, pc, r6
00329220  05 10 a0 e1                                      mov r1, r5
00329224  03 30 96 e7                                      ldr r3, [r6, r3]
00329228  00 50 a0 e3                                      mov r5, #0
0032922c  50 50 84 e5                                      str r5, [r4, #0x50]
00329230  08 30 83 e2                                      add r3, r3, #8
00329234  00 30 84 e5                                      str r3, [r4]
00329238  54 50 84 e5                                      str r5, [r4, #0x54]
0032923c  58 50 84 e5                                      str r5, [r4, #0x58]
00329240  14 00 84 e2                                      add r0, r4, #0x14
00329244  0e 20 81 e2                                      add r2, r1, #0xe
00329248  e4 9d ff eb                                      bl #0x3109e0
0032924c  01 30 a0 e3                                      mov r3, #1
00329250  33 50 c4 e5                                      strb r5, [r4, #0x33]
00329254  30 30 c4 e5                                      strb r3, [r4, #0x30]
00329258  2c 30 84 e5                                      str r3, [r4, #0x2c]
0032925c  04 00 a0 e1                                      mov r0, r4
00329260  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329264  90 5c 59 00 74 b8 66 00 1c 43 00 00              .byte 0x90, 0x5c, 0x59, 0x00, 0x74, 0xb8, 0x66, 0x00, 0x1c, 0x43, 0x00, 0x00
