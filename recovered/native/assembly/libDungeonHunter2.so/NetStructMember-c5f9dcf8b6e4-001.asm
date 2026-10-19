; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d1f8, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember8PostLoadEj
; demangled: NetStructMember::PostLoad(unsigned int)
; decoder-mode: arm
0036d1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d1fc, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember11GetSizeBitsEv
; demangled: NetStructMember::GetSizeBits()
; decoder-mode: arm
0036d1fc  04 00 90 e5                                      ldr r0, [r0, #4]
0036d200  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d204, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMemberD1Ev
; demangled: NetStructMember::~NetStructMember()
; decoder-mode: arm
0036d204  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d520, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMemberD0Ev
; demangled: NetStructMember::~NetStructMember()
; decoder-mode: arm
0036d520  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d524  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d528  10 40 2d e9                                      push {r4, lr}
0036d52c  03 30 8f e0                                      add r3, pc, r3
0036d530  02 20 93 e7                                      ldr r2, [r3, r2]
0036d534  00 40 a0 e1                                      mov r4, r0
0036d538  08 20 82 e2                                      add r2, r2, #8
0036d53c  00 20 80 e5                                      str r2, [r0]
0036d540  be 8b fe eb                                      bl #0x310440
0036d544  04 00 a0 e1                                      mov r0, r4
0036d548  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d54c  64 75 62 00 a8 10 00 00                          .byte 0x64, 0x75, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00814f70, declared_size=20, range_size=20, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember9IsChangedEv
; demangled: NetStructMember::IsChanged()
; decoder-mode: arm
00814f70  00 30 a0 e1                                      mov r3, r0
00814f74  00 20 a0 e3                                      mov r2, #0
00814f78  1c 00 d0 e5                                      ldrb r0, [r0, #0x1c]
00814f7c  1c 20 c3 e5                                      strb r2, [r3, #0x1c]
00814f80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00814f84, declared_size=84, range_size=84, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember10SetChangedEv
; demangled: NetStructMember::SetChanged()
; decoder-mode: arm
00814f84  44 30 9f e5                                      ldr r3, [pc, #0x44]
00814f88  44 20 9f e5                                      ldr r2, [pc, #0x44]
00814f8c  f0 00 2d e9                                      push {r4, r5, r6, r7}
00814f90  18 10 90 e5                                      ldr r1, [r0, #0x18]
00814f94  03 30 8f e0                                      add r3, pc, r3
00814f98  02 20 93 e7                                      ldr r2, [r3, r2]
00814f9c  01 c0 a0 e3                                      mov ip, #1
00814fa0  1c c0 c0 e5                                      strb ip, [r0, #0x1c]
00814fa4  14 10 80 e5                                      str r1, [r0, #0x14]
00814fa8  10 10 80 e5                                      str r1, [r0, #0x10]
00814fac  01 40 a0 e3                                      mov r4, #1
00814fb0  d0 60 c2 e1                                      ldrd r6, r7, [r2]
00814fb4  00 50 a0 e3                                      mov r5, #0
00814fb8  06 40 94 e0                                      adds r4, r4, r6
00814fbc  07 50 a5 e0                                      adc r5, r5, r7
00814fc0  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
00814fc4  f0 40 c2 e1                                      strd r4, r5, [r2]
00814fc8  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00814fcc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00814fd0  fc fa 17 00 7c 0e 00 00                          .byte 0xfc, 0xfa, 0x17, 0x00, 0x7c, 0x0e, 0x00, 0x00

; FUNCTION 0x00814fd8, declared_size=16, range_size=16, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember8SetAckedEv
; demangled: NetStructMember::SetAcked()
; decoder-mode: arm
00814fd8  00 30 e0 e3                                      mvn r3, #0
00814fdc  14 30 80 e5                                      str r3, [r0, #0x14]
00814fe0  10 30 80 e5                                      str r3, [r0, #0x10]
00814fe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00814fe8, declared_size=28, range_size=28, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember8SetAckedEj
; demangled: NetStructMember::SetAcked(unsigned int)
; decoder-mode: arm
00814fe8  10 20 90 e5                                      ldr r2, [r0, #0x10]
00814fec  14 30 90 e5                                      ldr r3, [r0, #0x14]
00814ff0  01 20 82 e1                                      orr r2, r2, r1
00814ff4  01 30 83 e1                                      orr r3, r3, r1
00814ff8  14 30 80 e5                                      str r3, [r0, #0x14]
00814ffc  10 20 80 e5                                      str r2, [r0, #0x10]
00815000  1e ff 2f e1                                      bx lr

; FUNCTION 0x00815004, declared_size=36, range_size=36, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember17AcknowledgeChangeEjy
; demangled: NetStructMember::AcknowledgeChange(unsigned int, unsigned long long)
; decoder-mode: arm
00815004  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00815008  03 00 5c e1                                      cmp ip, r3
0081500c  00 00 00 2a                                      bhs #0x815014
00815010  f4 ff ff ea                                      b #0x814fe8
00815014  1e ff 2f 11                                      bxne lr
00815018  08 30 90 e5                                      ldr r3, [r0, #8]
0081501c  02 00 53 e1                                      cmp r3, r2
00815020  1e ff 2f 21                                      bxhs lr
00815024  f9 ff ff ea                                      b #0x815010

; FUNCTION 0x00815028, declared_size=20, range_size=20, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember24AreChangesAcknowledgedByEj
; demangled: NetStructMember::AreChangesAcknowledgedBy(unsigned int)
; decoder-mode: arm
00815028  10 30 90 e5                                      ldr r3, [r0, #0x10]
0081502c  03 00 11 e1                                      tst r1, r3
00815030  00 00 a0 03                                      moveq r0, #0
00815034  01 00 a0 13                                      movne r0, #1
00815038  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081503c, declared_size=60, range_size=60, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember11SetSentFlagEjby
; demangled: NetStructMember::SetSentFlag(unsigned int, bool, unsigned long long)
; decoder-mode: arm
0081503c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00815040  04 c0 9d e5                                      ldr ip, [sp, #4]
00815044  0c 00 53 e1                                      cmp r3, ip
00815048  00 30 9d e5                                      ldr r3, [sp]
0081504c  03 00 00 3a                                      blo #0x815060
00815050  1e ff 2f 11                                      bxne lr
00815054  08 c0 90 e5                                      ldr ip, [r0, #8]
00815058  03 00 5c e1                                      cmp ip, r3
0081505c  1e ff 2f 21                                      bxhs lr
00815060  14 30 90 e5                                      ldr r3, [r0, #0x14]
00815064  00 00 52 e3                                      cmp r2, #0
00815068  01 10 83 11                                      orrne r1, r3, r1
0081506c  01 10 c3 01                                      biceq r1, r3, r1
00815070  14 10 80 e5                                      str r1, [r0, #0x14]
00815074  1e ff 2f e1                                      bx lr

; FUNCTION 0x00815078, declared_size=40, range_size=40, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember13HasDataToSendEjj
; demangled: NetStructMember::HasDataToSend(unsigned int, unsigned int)
; decoder-mode: arm
00815078  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0081507c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00815080  0c c0 01 e0                                      and ip, r1, ip
00815084  0c 00 12 e1                                      tst r2, ip
00815088  01 30 03 e0                                      and r3, r3, r1
0081508c  10 30 80 e5                                      str r3, [r0, #0x10]
00815090  14 c0 80 e5                                      str ip, [r0, #0x14]
00815094  00 00 a0 13                                      movne r0, #0
00815098  01 00 a0 03                                      moveq r0, #1
0081509c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008150a0, declared_size=16, range_size=16, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember12GetFrameTimeEv
; demangled: NetStructMember::GetFrameTime()
; decoder-mode: arm
008150a0  10 40 2d e9                                      push {r4, lr}
008150a4  ba a1 ff eb                                      bl #0x7fd794
008150a8  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
008150ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008150b0, declared_size=92, range_size=92, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember22AreChangesAcknowledgedEv
; demangled: NetStructMember::AreChangesAcknowledged()
; decoder-mode: arm
008150b0  70 40 2d e9                                      push {r4, r5, r6, lr}
008150b4  00 40 a0 e1                                      mov r4, r0
008150b8  b3 af ff eb                                      bl #0x800f8c
008150bc  00 60 a0 e1                                      mov r6, r0
008150c0  06 a5 ff eb                                      bl #0x7fe4e0
008150c4  00 00 50 e3                                      cmp r0, #0
008150c8  0b 00 00 1a                                      bne #0x8150fc
008150cc  00 30 96 e5                                      ldr r3, [r6]
008150d0  06 00 a0 e1                                      mov r0, r6
008150d4  84 50 93 e5                                      ldr r5, [r3, #0x84]
008150d8  0f e0 a0 e1                                      mov lr, pc
008150dc  74 f0 93 e5                                      ldr pc, [r3, #0x74]
008150e0  00 10 a0 e1                                      mov r1, r0
008150e4  06 00 a0 e1                                      mov r0, r6
008150e8  35 ff 2f e1                                      blx r5
008150ec  00 10 a0 e1                                      mov r1, r0
008150f0  04 00 a0 e1                                      mov r0, r4
008150f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008150f8  ca ff ff ea                                      b #0x815028
008150fc  10 10 94 e5                                      ldr r1, [r4, #0x10]
00815100  06 00 a0 e1                                      mov r0, r6
00815104  70 40 bd e8                                      pop {r4, r5, r6, lr}
00815108  31 ac ff ea                                      b #0x8001d4

; FUNCTION 0x0081510c, declared_size=92, range_size=92, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember4LoadER12NetBitStream
; demangled: NetStructMember::Load(NetBitStream&)
; decoder-mode: arm
0081510c  70 40 2d e9                                      push {r4, r5, r6, lr}
00815110  04 30 90 e5                                      ldr r3, [r0, #4]
00815114  00 40 a0 e1                                      mov r4, r0
00815118  01 50 a0 e1                                      mov r5, r1
0081511c  01 00 53 e3                                      cmp r3, #1
00815120  0b 00 00 9a                                      bls #0x815154
00815124  01 00 a0 e1                                      mov r0, r1
00815128  da e4 ff eb                                      bl #0x80e498
0081512c  00 00 50 e3                                      cmp r0, #0
00815130  00 00 00 1a                                      bne #0x815138
00815134  70 80 bd e8                                      pop {r4, r5, r6, pc}
00815138  04 00 a0 e1                                      mov r0, r4
0081513c  05 10 a0 e1                                      mov r1, r5
00815140  00 30 94 e5                                      ldr r3, [r4]
00815144  0f e0 a0 e1                                      mov lr, pc
00815148  08 f0 93 e5                                      ldr pc, [r3, #8]
0081514c  01 00 a0 e3                                      mov r0, #1
00815150  70 80 bd e8                                      pop {r4, r5, r6, pc}
00815154  00 30 90 e5                                      ldr r3, [r0]
00815158  0f e0 a0 e1                                      mov lr, pc
0081515c  08 f0 93 e5                                      ldr pc, [r3, #8]
00815160  01 00 a0 e3                                      mov r0, #1
00815164  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00815168, declared_size=96, range_size=96, mode=arm
; class-group: NetStructMember
; alias: _ZN15NetStructMember9SerializeER12NetBitStreamj
; demangled: NetStructMember::Serialize(NetBitStream&, unsigned int)
; decoder-mode: arm
00815168  70 40 2d e9                                      push {r4, r5, r6, lr}
0081516c  04 30 90 e5                                      ldr r3, [r0, #4]
00815170  00 40 a0 e1                                      mov r4, r0
00815174  01 50 a0 e1                                      mov r5, r1
00815178  01 00 53 e3                                      cmp r3, #1
0081517c  0c 00 00 9a                                      bls #0x8151b4
00815180  14 30 90 e5                                      ldr r3, [r0, #0x14]
00815184  03 00 12 e1                                      tst r2, r3
00815188  04 00 00 0a                                      beq #0x8151a0
0081518c  01 00 a0 e1                                      mov r0, r1
00815190  00 10 a0 e3                                      mov r1, #0
00815194  a4 e4 ff eb                                      bl #0x80e42c
00815198  00 00 a0 e3                                      mov r0, #0
0081519c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008151a0  01 00 a0 e1                                      mov r0, r1
008151a4  01 10 a0 e3                                      mov r1, #1
008151a8  9f e4 ff eb                                      bl #0x80e42c
008151ac  04 00 a0 e1                                      mov r0, r4
008151b0  05 10 a0 e1                                      mov r1, r5
008151b4  00 30 94 e5                                      ldr r3, [r4]
008151b8  0f e0 a0 e1                                      mov lr, pc
008151bc  04 f0 93 e5                                      ldr pc, [r3, #4]
008151c0  01 00 a0 e3                                      mov r0, #1
008151c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
