; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008250dc, declared_size=52, range_size=52, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImplD1Ev
; demangled: CTransportManagerImpl::~CTransportManagerImpl()
; decoder-mode: arm
008250dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
008250e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
008250e4  10 40 2d e9                                      push {r4, lr}
008250e8  03 30 8f e0                                      add r3, pc, r3
008250ec  02 20 93 e7                                      ldr r2, [r3, r2]
008250f0  00 40 a0 e1                                      mov r4, r0
008250f4  08 20 82 e2                                      add r2, r2, #8
008250f8  00 20 80 e5                                      str r2, [r0]
008250fc  88 d9 ff eb                                      bl #0x81b724
00825100  04 00 a0 e1                                      mov r0, r4
00825104  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00825108  a8 f9 16 00 74 2f 00 00                          .byte 0xa8, 0xf9, 0x16, 0x00, 0x74, 0x2f, 0x00, 0x00

; FUNCTION 0x00825110, declared_size=104, range_size=104, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl11GetHostnameER10CNetworkId
; demangled: CTransportManagerImpl::GetHostname(CNetworkId&)
; decoder-mode: arm
00825110  10 40 2d e9                                      push {r4, lr}
00825114  18 30 92 e5                                      ldr r3, [r2, #0x18]
00825118  08 d0 4d e2                                      sub sp, sp, #8
0082511c  00 40 a0 e1                                      mov r4, r0
00825120  01 00 13 e3                                      tst r3, #1
00825124  04 30 92 05                                      ldreq r3, [r2, #4]
00825128  0c 30 92 15                                      ldrne r3, [r2, #0xc]
0082512c  08 00 8d e2                                      add r0, sp, #8
00825130  04 10 a0 e3                                      mov r1, #4
00825134  08 30 20 e5                                      str r3, [r0, #-8]!
00825138  02 20 a0 e3                                      mov r2, #2
0082513c  0d 00 a0 e1                                      mov r0, sp
00825140  ec a5 eb eb                                      bl #0x30e8f8
00825144  00 00 50 e3                                      cmp r0, #0
00825148  00 10 90 15                                      ldrne r1, [r0]
0082514c  05 00 00 0a                                      beq #0x825168
00825150  04 00 a0 e1                                      mov r0, r4
00825154  04 20 8d e2                                      add r2, sp, #4
00825158  e3 bb eb eb                                      bl #0x3140ec
0082515c  04 00 a0 e1                                      mov r0, r4
00825160  08 d0 8d e2                                      add sp, sp, #8
00825164  10 80 bd e8                                      pop {r4, pc}
00825168  04 10 9f e5                                      ldr r1, [pc, #4]
0082516c  01 10 8f e0                                      add r1, pc, r1
00825170  f6 ff ff ea                                      b #0x825150
; mapping-symbol data/literal pool
00825174  9c 66 0a 00                                      .byte 0x9c, 0x66, 0x0a, 0x00

; FUNCTION 0x00825178, declared_size=164, range_size=164, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl16GetLocalhostnameEv
; demangled: CTransportManagerImpl::GetLocalhostname()
; decoder-mode: arm
00825178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082517c  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00825180  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
00825184  01 db 4d e2                                      sub sp, sp, #0x400
00825188  04 40 8f e0                                      add r4, pc, r4
0082518c  06 20 94 e7                                      ldr r2, [r4, r6]
00825190  08 d0 4d e2                                      sub sp, sp, #8
00825194  00 30 a0 e3                                      mov r3, #0
00825198  00 c0 92 e5                                      ldr ip, [r2]
0082519c  08 50 8d e2                                      add r5, sp, #8
008251a0  03 10 a0 e1                                      mov r1, r3
008251a4  ff 2f a0 e3                                      mov r2, #0x3fc
008251a8  04 80 45 e2                                      sub r8, r5, #4
008251ac  00 70 a0 e1                                      mov r7, r0
008251b0  05 00 a0 e1                                      mov r0, r5
008251b4  04 c4 8d e5                                      str ip, [sp, #0x404]
008251b8  04 30 8d e5                                      str r3, [sp, #4]
008251bc  a7 a4 eb eb                                      bl #0x30e460
008251c0  01 1b a0 e3                                      mov r1, #0x400
008251c4  08 00 a0 e1                                      mov r0, r8
008251c8  dc a5 eb eb                                      bl #0x30e940
008251cc  00 00 50 e3                                      cmp r0, #0
008251d0  08 10 a0 01                                      moveq r1, r8
008251d4  3c 10 9f 15                                      ldrne r1, [pc, #0x3c]
008251d8  01 10 8f 10                                      addne r1, pc, r1
008251dc  08 20 45 e2                                      sub r2, r5, #8
008251e0  07 00 a0 e1                                      mov r0, r7
008251e4  c0 bb eb eb                                      bl #0x3140ec
008251e8  06 30 94 e7                                      ldr r3, [r4, r6]
008251ec  04 24 9d e5                                      ldr r2, [sp, #0x404]
008251f0  07 00 a0 e1                                      mov r0, r7
008251f4  00 30 93 e5                                      ldr r3, [r3]
008251f8  03 00 52 e1                                      cmp r2, r3
008251fc  02 00 00 1a                                      bne #0x82520c
00825200  08 d0 8d e2                                      add sp, sp, #8
00825204  01 db 8d e2                                      add sp, sp, #0x400
00825208  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082520c  3f a4 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00825210  08 f9 16 00 ac 40 00 00 30 66 0a 00              .byte 0x08, 0xf9, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x66, 0x0a, 0x00

; FUNCTION 0x0082521c, declared_size=36, range_size=36, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl18StopReceiverThreadEv
; demangled: CTransportManagerImpl::StopReceiverThread()
; decoder-mode: arm
0082521c  04 e0 2d e5                                      str lr, [sp, #-4]!
00825220  0c d0 4d e2                                      sub sp, sp, #0xc
00825224  04 10 8d e2                                      add r1, sp, #4
00825228  08 01 90 e5                                      ldr r0, [r0, #0x108]
0082522c  9b a6 eb eb                                      bl #0x30eca0
00825230  00 00 50 e3                                      cmp r0, #0
00825234  00 00 e0 13                                      mvnne r0, #0
00825238  0c d0 8d e2                                      add sp, sp, #0xc
0082523c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00825240, declared_size=8, range_size=8, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl5SleepEj
; demangled: CTransportManagerImpl::Sleep(unsigned int)
; decoder-mode: arm
00825240  01 00 a0 e1                                      mov r0, r1
00825244  8d a5 eb ea                                      b #0x30e880

; FUNCTION 0x00825248, declared_size=108, range_size=108, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl19StartReceiverThreadEv
; demangled: CTransportManagerImpl::StartReceiverThread()
; decoder-mode: arm
00825248  70 40 2d e9                                      push {r4, r5, r6, lr}
0082524c  18 d0 4d e2                                      sub sp, sp, #0x18
00825250  00 60 a0 e1                                      mov r6, r0
00825254  0d 00 a0 e1                                      mov r0, sp
00825258  7d a4 eb eb                                      bl #0x30e454
0082525c  48 40 9f e5                                      ldr r4, [pc, #0x48]
00825260  0d 00 a0 e1                                      mov r0, sp
00825264  00 10 a0 e3                                      mov r1, #0
00825268  e2 a4 eb eb                                      bl #0x30e5f8
0082526c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00825270  04 40 8f e0                                      add r4, pc, r4
00825274  06 30 a0 e1                                      mov r3, r6
00825278  02 20 94 e7                                      ldr r2, [r4, r2]
0082527c  0d 10 a0 e1                                      mov r1, sp
00825280  42 0f 86 e2                                      add r0, r6, #0x108
00825284  55 a3 eb eb                                      bl #0x30dfe0
00825288  00 60 a0 e1                                      mov r6, r0
0082528c  0d 00 a0 e1                                      mov r0, sp
00825290  c7 a6 eb eb                                      bl #0x30edb4
00825294  00 00 56 e3                                      cmp r6, #0
00825298  0d 50 a0 e1                                      mov r5, sp
0082529c  06 00 a0 01                                      moveq r0, r6
008252a0  00 00 e0 13                                      mvnne r0, #0
008252a4  18 d0 8d e2                                      add sp, sp, #0x18
008252a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008252ac  20 f8 16 00 08 25 00 00                          .byte 0x20, 0xf8, 0x16, 0x00, 0x08, 0x25, 0x00, 0x00

; FUNCTION 0x008252b4, declared_size=56, range_size=56, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl22ReceiverThreadInternalEv
; demangled: CTransportManagerImpl::ReceiverThreadInternal()
; decoder-mode: arm
008252b4  10 40 2d e9                                      push {r4, lr}
008252b8  fc 30 d0 e5                                      ldrb r3, [r0, #0xfc]
008252bc  00 40 a0 e1                                      mov r4, r0
008252c0  00 00 53 e3                                      cmp r3, #0
008252c4  07 00 00 1a                                      bne #0x8252e8
008252c8  04 00 a0 e1                                      mov r0, r4
008252cc  b8 d8 ff eb                                      bl #0x81b5b4
008252d0  04 00 a0 e1                                      mov r0, r4
008252d4  0a 10 a0 e3                                      mov r1, #0xa
008252d8  d8 ff ff eb                                      bl #0x825240
008252dc  fc 30 d4 e5                                      ldrb r3, [r4, #0xfc]
008252e0  00 00 53 e3                                      cmp r3, #0
008252e4  f7 ff ff 0a                                      beq #0x8252c8
008252e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008252ec, declared_size=16, range_size=16, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImpl14ReceiverThreadEPv
; demangled: CTransportManagerImpl::ReceiverThread(void*)
; decoder-mode: arm
008252ec  10 40 2d e9                                      push {r4, lr}
008252f0  ef ff ff eb                                      bl #0x8252b4
008252f4  00 00 a0 e3                                      mov r0, #0
008252f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008252fc, declared_size=60, range_size=60, mode=arm
; class-group: CTransportManagerImpl
; alias: _ZN21CTransportManagerImplD0Ev
; demangled: CTransportManagerImpl::~CTransportManagerImpl()
; decoder-mode: arm
008252fc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00825300  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00825304  10 40 2d e9                                      push {r4, lr}
00825308  03 30 8f e0                                      add r3, pc, r3
0082530c  02 20 93 e7                                      ldr r2, [r3, r2]
00825310  00 40 a0 e1                                      mov r4, r0
00825314  08 20 82 e2                                      add r2, r2, #8
00825318  00 20 80 e5                                      str r2, [r0]
0082531c  00 d9 ff eb                                      bl #0x81b724
00825320  04 00 a0 e1                                      mov r0, r4
00825324  45 ac eb eb                                      bl #0x310440
00825328  04 00 a0 e1                                      mov r0, r4
0082532c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00825330  88 f7 16 00 74 2f 00 00                          .byte 0x88, 0xf7, 0x16, 0x00, 0x74, 0x2f, 0x00, 0x00
