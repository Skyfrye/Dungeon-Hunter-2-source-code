; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00834d2c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15getMsgListCountEv
; demangled: GLXPlayerMessage::getMsgListCount()
; decoder-mode: arm
00834d2c  60 00 90 e5                                      ldr r0, [r0, #0x60]
00834d30  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834d34, declared_size=140, range_size=140, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage11getMsgCountEii
; demangled: GLXPlayerMessage::getMsgCount(int, int)
; decoder-mode: arm
00834d34  02 00 52 e3                                      cmp r2, #2
00834d38  0c 00 00 8a                                      bhi #0x834d70
00834d3c  01 00 51 e3                                      cmp r1, #1
00834d40  0c 00 00 0a                                      beq #0x834d78
00834d44  02 00 51 e3                                      cmp r1, #2
00834d48  0d 00 00 0a                                      beq #0x834d84
00834d4c  04 00 51 e3                                      cmp r1, #4
00834d50  0e 00 00 0a                                      beq #0x834d90
00834d54  08 00 51 e3                                      cmp r1, #8
00834d58  10 00 00 0a                                      beq #0x834da0
00834d5c  10 00 51 e3                                      cmp r1, #0x10
00834d60  11 00 00 1a                                      bne #0x834dac
00834d64  02 21 80 e0                                      add r2, r0, r2, lsl #2
00834d68  9c 00 92 e5                                      ldr r0, [r2, #0x9c]
00834d6c  1e ff 2f e1                                      bx lr
00834d70  00 00 e0 e3                                      mvn r0, #0
00834d74  1e ff 2f e1                                      bx lr
00834d78  02 21 80 e0                                      add r2, r0, r2, lsl #2
00834d7c  6c 00 92 e5                                      ldr r0, [r2, #0x6c]
00834d80  1e ff 2f e1                                      bx lr
00834d84  02 21 80 e0                                      add r2, r0, r2, lsl #2
00834d88  78 00 92 e5                                      ldr r0, [r2, #0x78]
00834d8c  1e ff 2f e1                                      bx lr
00834d90  20 20 82 e2                                      add r2, r2, #0x20
00834d94  02 01 80 e0                                      add r0, r0, r2, lsl #2
00834d98  01 00 90 e7                                      ldr r0, [r0, r1]
00834d9c  1e ff 2f e1                                      bx lr
00834da0  02 21 80 e0                                      add r2, r0, r2, lsl #2
00834da4  90 00 92 e5                                      ldr r0, [r2, #0x90]
00834da8  1e ff 2f e1                                      bx lr
00834dac  20 00 51 e3                                      cmp r1, #0x20
00834db0  ee ff ff 1a                                      bne #0x834d70
00834db4  02 21 80 e0                                      add r2, r0, r2, lsl #2
00834db8  a8 00 92 e5                                      ldr r0, [r2, #0xa8]
00834dbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834dc0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage17getMySentMsgCountEv
; demangled: GLXPlayerMessage::getMySentMsgCount()
; decoder-mode: arm
00834dc0  b4 00 90 e5                                      ldr r0, [r0, #0xb4]
00834dc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834dc8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage8getMsgIDEi
; demangled: GLXPlayerMessage::getMsgID(int)
; decoder-mode: arm
00834dc8  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00834dcc  01 20 73 e2                                      rsbs r2, r3, #1
00834dd0  00 20 a0 33                                      movlo r2, #0
00834dd4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834dd8  01 00 00 0a                                      beq #0x834de4
00834ddc  00 00 e0 e3                                      mvn r0, #0
00834de0  1e ff 2f e1                                      bx lr
00834de4  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834de8  02 00 51 e1                                      cmp r1, r2
00834dec  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834df0  1e ff 2f b1                                      bxlt lr
00834df4  f8 ff ff ea                                      b #0x834ddc

; FUNCTION 0x00834df8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage11getMsgTitleEi
; demangled: GLXPlayerMessage::getMsgTitle(int)
; decoder-mode: arm
00834df8  40 30 90 e5                                      ldr r3, [r0, #0x40]
00834dfc  01 20 73 e2                                      rsbs r2, r3, #1
00834e00  00 20 a0 33                                      movlo r2, #0
00834e04  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834e08  01 00 00 0a                                      beq #0x834e14
00834e0c  00 00 a0 e3                                      mov r0, #0
00834e10  1e ff 2f e1                                      bx lr
00834e14  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834e18  02 00 51 e1                                      cmp r1, r2
00834e1c  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834e20  1e ff 2f b1                                      bxlt lr
00834e24  f8 ff ff ea                                      b #0x834e0c

; FUNCTION 0x00834e28, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage18getMsgSenderNumberEi
; demangled: GLXPlayerMessage::getMsgSenderNumber(int)
; decoder-mode: arm
00834e28  44 30 90 e5                                      ldr r3, [r0, #0x44]
00834e2c  01 20 73 e2                                      rsbs r2, r3, #1
00834e30  00 20 a0 33                                      movlo r2, #0
00834e34  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834e38  01 00 00 0a                                      beq #0x834e44
00834e3c  00 00 a0 e3                                      mov r0, #0
00834e40  1e ff 2f e1                                      bx lr
00834e44  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834e48  02 00 51 e1                                      cmp r1, r2
00834e4c  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834e50  1e ff 2f b1                                      bxlt lr
00834e54  f8 ff ff ea                                      b #0x834e3c

; FUNCTION 0x00834e58, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage12getMsgSenderEi
; demangled: GLXPlayerMessage::getMsgSender(int)
; decoder-mode: arm
00834e58  48 30 90 e5                                      ldr r3, [r0, #0x48]
00834e5c  01 20 73 e2                                      rsbs r2, r3, #1
00834e60  00 20 a0 33                                      movlo r2, #0
00834e64  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834e68  01 00 00 0a                                      beq #0x834e74
00834e6c  00 00 a0 e3                                      mov r0, #0
00834e70  1e ff 2f e1                                      bx lr
00834e74  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834e78  02 00 51 e1                                      cmp r1, r2
00834e7c  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834e80  1e ff 2f b1                                      bxlt lr
00834e84  f8 ff ff ea                                      b #0x834e6c

; FUNCTION 0x00834e88, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage23getMsgDesUserNumberListEi
; demangled: GLXPlayerMessage::getMsgDesUserNumberList(int)
; decoder-mode: arm
00834e88  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00834e8c  01 20 73 e2                                      rsbs r2, r3, #1
00834e90  00 20 a0 33                                      movlo r2, #0
00834e94  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834e98  01 00 00 0a                                      beq #0x834ea4
00834e9c  00 00 a0 e3                                      mov r0, #0
00834ea0  1e ff 2f e1                                      bx lr
00834ea4  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834ea8  02 00 51 e1                                      cmp r1, r2
00834eac  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834eb0  1e ff 2f b1                                      bxlt lr
00834eb4  f8 ff ff ea                                      b #0x834e9c

; FUNCTION 0x00834eb8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage21getMsgDesUserNameListEi
; demangled: GLXPlayerMessage::getMsgDesUserNameList(int)
; decoder-mode: arm
00834eb8  50 30 90 e5                                      ldr r3, [r0, #0x50]
00834ebc  01 20 73 e2                                      rsbs r2, r3, #1
00834ec0  00 20 a0 33                                      movlo r2, #0
00834ec4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834ec8  01 00 00 0a                                      beq #0x834ed4
00834ecc  00 00 a0 e3                                      mov r0, #0
00834ed0  1e ff 2f e1                                      bx lr
00834ed4  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834ed8  02 00 51 e1                                      cmp r1, r2
00834edc  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834ee0  1e ff 2f b1                                      bxlt lr
00834ee4  f8 ff ff ea                                      b #0x834ecc

; FUNCTION 0x00834ee8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage17getMsgCreatedTimeEi
; demangled: GLXPlayerMessage::getMsgCreatedTime(int)
; decoder-mode: arm
00834ee8  54 30 90 e5                                      ldr r3, [r0, #0x54]
00834eec  01 20 73 e2                                      rsbs r2, r3, #1
00834ef0  00 20 a0 33                                      movlo r2, #0
00834ef4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834ef8  01 00 00 0a                                      beq #0x834f04
00834efc  00 00 a0 e3                                      mov r0, #0
00834f00  1e ff 2f e1                                      bx lr
00834f04  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834f08  02 00 51 e1                                      cmp r1, r2
00834f0c  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834f10  1e ff 2f b1                                      bxlt lr
00834f14  f8 ff ff ea                                      b #0x834efc

; FUNCTION 0x00834f18, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15getMsgReadStateEi
; demangled: GLXPlayerMessage::getMsgReadState(int)
; decoder-mode: arm
00834f18  58 30 90 e5                                      ldr r3, [r0, #0x58]
00834f1c  01 20 73 e2                                      rsbs r2, r3, #1
00834f20  00 20 a0 33                                      movlo r2, #0
00834f24  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834f28  03 00 00 1a                                      bne #0x834f3c
00834f2c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834f30  02 00 51 e1                                      cmp r1, r2
00834f34  01 00 d3 b7                                      ldrblt r0, [r3, r1]
00834f38  1e ff 2f b1                                      bxlt lr
00834f3c  00 00 a0 e3                                      mov r0, #0
00834f40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834f44, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage10getMsgBodyEv
; demangled: GLXPlayerMessage::getMsgBody()
; decoder-mode: arm
00834f44  68 00 90 e5                                      ldr r0, [r0, #0x68]
00834f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834f4c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15getCurrentMsgIDEv
; demangled: GLXPlayerMessage::getCurrentMsgID()
; decoder-mode: arm
00834f4c  64 00 90 e5                                      ldr r0, [r0, #0x64]
00834f50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834f54, declared_size=80, range_size=80, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage21getCurrentMsgPositionEv
; demangled: GLXPlayerMessage::getCurrentMsgPosition()
; decoder-mode: arm
00834f54  70 40 2d e9                                      push {r4, r5, r6, lr}
00834f58  00 50 a0 e1                                      mov r5, r0
00834f5c  00 40 a0 e3                                      mov r4, #0
00834f60  06 00 00 ea                                      b #0x834f80
00834f64  97 ff ff eb                                      bl #0x834dc8
00834f68  00 60 a0 e1                                      mov r6, r0
00834f6c  05 00 a0 e1                                      mov r0, r5
00834f70  f5 ff ff eb                                      bl #0x834f4c
00834f74  00 00 56 e1                                      cmp r6, r0
00834f78  07 00 00 0a                                      beq #0x834f9c
00834f7c  01 40 84 e2                                      add r4, r4, #1
00834f80  05 00 a0 e1                                      mov r0, r5
00834f84  68 ff ff eb                                      bl #0x834d2c
00834f88  00 00 54 e1                                      cmp r4, r0
00834f8c  04 10 a0 e1                                      mov r1, r4
00834f90  05 00 a0 e1                                      mov r0, r5
00834f94  f2 ff ff ba                                      blt #0x834f64
00834f98  00 40 e0 e3                                      mvn r4, #0
00834f9c  04 00 a0 e1                                      mov r0, r4
00834fa0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00834fa4, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage10getMsgTypeEi
; demangled: GLXPlayerMessage::getMsgType(int)
; decoder-mode: arm
00834fa4  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
00834fa8  01 20 73 e2                                      rsbs r2, r3, #1
00834fac  00 20 a0 33                                      movlo r2, #0
00834fb0  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
00834fb4  01 00 00 0a                                      beq #0x834fc0
00834fb8  00 00 e0 e3                                      mvn r0, #0
00834fbc  1e ff 2f e1                                      bx lr
00834fc0  60 20 90 e5                                      ldr r2, [r0, #0x60]
00834fc4  02 00 51 e1                                      cmp r1, r2
00834fc8  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00834fcc  1e ff 2f b1                                      bxlt lr
00834fd0  f8 ff ff ea                                      b #0x834fb8

; FUNCTION 0x00834fd4, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage13clearMsgCountEv
; demangled: GLXPlayerMessage::clearMsgCount()
; decoder-mode: arm
00834fd4  00 30 a0 e3                                      mov r3, #0
00834fd8  03 20 a0 e1                                      mov r2, r3
00834fdc  01 30 83 e2                                      add r3, r3, #1
00834fe0  06 00 53 e3                                      cmp r3, #6
00834fe4  6c 20 80 e5                                      str r2, [r0, #0x6c]
00834fe8  70 20 80 e5                                      str r2, [r0, #0x70]
00834fec  74 20 80 e5                                      str r2, [r0, #0x74]
00834ff0  0c 00 80 e2                                      add r0, r0, #0xc
00834ff4  f8 ff ff 1a                                      bne #0x834fdc
00834ff8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00834ffc, declared_size=296, range_size=296, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15processMsgCountEPc
; demangled: GLXPlayerMessage::processMsgCount(char*)
; decoder-mode: arm
00834ffc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00835000  14 91 9f e5                                      ldr sb, [pc, #0x114]
00835004  14 21 9f e5                                      ldr r2, [pc, #0x114]
00835008  3c d0 4d e2                                      sub sp, sp, #0x3c
0083500c  09 90 8f e0                                      add sb, pc, sb
00835010  02 30 99 e7                                      ldr r3, [sb, r2]
00835014  01 a0 a0 e1                                      mov sl, r1
00835018  04 20 8d e5                                      str r2, [sp, #4]
0083501c  00 30 93 e5                                      ldr r3, [r3]
00835020  00 b0 a0 e1                                      mov fp, r0
00835024  34 30 8d e5                                      str r3, [sp, #0x34]
00835028  e9 ff ff eb                                      bl #0x834fd4
0083502c  00 00 5a e3                                      cmp sl, #0
00835030  30 00 00 0a                                      beq #0x8350f8
00835034  0a 00 a0 e1                                      mov r0, sl
00835038  db d7 ff eb                                      bl #0x82afac
0083503c  00 00 50 e3                                      cmp r0, #0
00835040  2c 00 00 da                                      ble #0x8350f8
00835044  0c 70 8d e2                                      add r7, sp, #0xc
00835048  00 80 a0 e3                                      mov r8, #0
0083504c  04 30 87 e2                                      add r3, r7, #4
00835050  04 80 83 e4                                      str r8, [r3], #4
00835054  04 80 83 e4                                      str r8, [r3], #4
00835058  04 80 83 e4                                      str r8, [r3], #4
0083505c  04 80 83 e4                                      str r8, [r3], #4
00835060  04 80 83 e4                                      str r8, [r3], #4
00835064  04 80 83 e4                                      str r8, [r3], #4
00835068  00 80 83 e5                                      str r8, [r3]
0083506c  0c 80 8d e5                                      str r8, [sp, #0xc]
00835070  2c 80 8d e5                                      str r8, [sp, #0x2c]
00835074  30 80 8d e5                                      str r8, [sp, #0x30]
00835078  2c 50 8d e2                                      add r5, sp, #0x2c
0083507c  07 00 a0 e1                                      mov r0, r7
00835080  00 10 a0 e3                                      mov r1, #0
00835084  20 20 a0 e3                                      mov r2, #0x20
00835088  b5 d8 ff eb                                      bl #0x82b364
0083508c  7c 30 a0 e3                                      mov r3, #0x7c
00835090  0a 00 a0 e1                                      mov r0, sl
00835094  07 10 a0 e1                                      mov r1, r7
00835098  08 20 a0 e1                                      mov r2, r8
0083509c  0f d7 ff eb                                      bl #0x82ace0
008350a0  0c 30 a0 e3                                      mov r3, #0xc
008350a4  93 b8 26 e0                                      mla r6, r3, r8, fp
008350a8  00 40 a0 e3                                      mov r4, #0
008350ac  6c 60 86 e2                                      add r6, r6, #0x6c
008350b0  01 40 84 e2                                      add r4, r4, #1
008350b4  05 00 a0 e1                                      mov r0, r5
008350b8  00 10 a0 e3                                      mov r1, #0
008350bc  08 20 a0 e3                                      mov r2, #8
008350c0  a7 d8 ff eb                                      bl #0x82b364
008350c4  05 10 a0 e1                                      mov r1, r5
008350c8  04 20 a0 e1                                      mov r2, r4
008350cc  5e 30 a0 e3                                      mov r3, #0x5e
008350d0  07 00 a0 e1                                      mov r0, r7
008350d4  01 d7 ff eb                                      bl #0x82ace0
008350d8  05 00 a0 e1                                      mov r0, r5
008350dc  8f d8 ff eb                                      bl #0x82b320
008350e0  03 00 54 e3                                      cmp r4, #3
008350e4  04 00 86 e4                                      str r0, [r6], #4
008350e8  f0 ff ff 1a                                      bne #0x8350b0
008350ec  01 80 88 e2                                      add r8, r8, #1
008350f0  06 00 58 e3                                      cmp r8, #6
008350f4  e0 ff ff 1a                                      bne #0x83507c
008350f8  04 20 9d e5                                      ldr r2, [sp, #4]
008350fc  02 30 99 e7                                      ldr r3, [sb, r2]
00835100  34 20 9d e5                                      ldr r2, [sp, #0x34]
00835104  00 30 93 e5                                      ldr r3, [r3]
00835108  03 00 52 e1                                      cmp r2, r3
0083510c  01 00 00 1a                                      bne #0x835118
00835110  3c d0 8d e2                                      add sp, sp, #0x3c
00835114  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00835118  7c 64 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083511c  84 fa 15 00 ac 40 00 00                          .byte 0x84, 0xfa, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00835124, declared_size=84, range_size=84, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage17getMsgDesUserNameEii
; demangled: GLXPlayerMessage::getMsgDesUserName(int, int)
; decoder-mode: arm
00835124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00835128  50 40 90 e5                                      ldr r4, [r0, #0x50]
0083512c  00 50 a0 e1                                      mov r5, r0
00835130  01 60 a0 e1                                      mov r6, r1
00835134  00 00 54 e3                                      cmp r4, #0
00835138  02 70 a0 e1                                      mov r7, r2
0083513c  0b 00 00 0a                                      beq #0x835170
00835140  10 00 a0 e3                                      mov r0, #0x10
00835144  e1 63 eb eb                                      bl #0x30e0d0
00835148  00 10 a0 e3                                      mov r1, #0
0083514c  10 20 a0 e3                                      mov r2, #0x10
00835150  00 40 a0 e1                                      mov r4, r0
00835154  82 d8 ff eb                                      bl #0x82b364
00835158  50 30 95 e5                                      ldr r3, [r5, #0x50]
0083515c  07 20 a0 e1                                      mov r2, r7
00835160  04 10 a0 e1                                      mov r1, r4
00835164  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
00835168  2c 30 a0 e3                                      mov r3, #0x2c
0083516c  db d6 ff eb                                      bl #0x82ace0
00835170  04 00 a0 e1                                      mov r0, r4
00835174  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00835178, declared_size=84, range_size=84, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage19getMsgDesUserNumberEii
; demangled: GLXPlayerMessage::getMsgDesUserNumber(int, int)
; decoder-mode: arm
00835178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083517c  4c 40 90 e5                                      ldr r4, [r0, #0x4c]
00835180  00 50 a0 e1                                      mov r5, r0
00835184  01 60 a0 e1                                      mov r6, r1
00835188  00 00 54 e3                                      cmp r4, #0
0083518c  02 70 a0 e1                                      mov r7, r2
00835190  0b 00 00 0a                                      beq #0x8351c4
00835194  10 00 a0 e3                                      mov r0, #0x10
00835198  cc 63 eb eb                                      bl #0x30e0d0
0083519c  00 10 a0 e3                                      mov r1, #0
008351a0  10 20 a0 e3                                      mov r2, #0x10
008351a4  00 40 a0 e1                                      mov r4, r0
008351a8  6d d8 ff eb                                      bl #0x82b364
008351ac  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
008351b0  07 20 a0 e1                                      mov r2, r7
008351b4  04 10 a0 e1                                      mov r1, r4
008351b8  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
008351bc  2c 30 a0 e3                                      mov r3, #0x2c
008351c0  c6 d6 ff eb                                      bl #0x82ace0
008351c4  04 00 a0 e1                                      mov r0, r4
008351c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008351cc, declared_size=692, range_size=692, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage16clearMessageListEv
; demangled: GLXPlayerMessage::clearMessageList()
; decoder-mode: arm
008351cc  70 40 2d e9                                      push {r4, r5, r6, lr}
008351d0  00 40 a0 e1                                      mov r4, r0
008351d4  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
008351d8  00 00 50 e3                                      cmp r0, #0
008351dc  02 00 00 0a                                      beq #0x8351ec
008351e0  32 64 eb eb                                      bl #0x30e2b0
008351e4  00 30 a0 e3                                      mov r3, #0
008351e8  3c 30 84 e5                                      str r3, [r4, #0x3c]
008351ec  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
008351f0  00 00 50 e3                                      cmp r0, #0
008351f4  02 00 00 0a                                      beq #0x835204
008351f8  2c 64 eb eb                                      bl #0x30e2b0
008351fc  00 30 a0 e3                                      mov r3, #0
00835200  5c 30 84 e5                                      str r3, [r4, #0x5c]
00835204  58 00 94 e5                                      ldr r0, [r4, #0x58]
00835208  00 00 50 e3                                      cmp r0, #0
0083520c  02 00 00 0a                                      beq #0x83521c
00835210  26 64 eb eb                                      bl #0x30e2b0
00835214  00 30 a0 e3                                      mov r3, #0
00835218  58 30 84 e5                                      str r3, [r4, #0x58]
0083521c  40 20 94 e5                                      ldr r2, [r4, #0x40]
00835220  00 00 52 e3                                      cmp r2, #0
00835224  15 00 00 0a                                      beq #0x835280
00835228  60 30 94 e5                                      ldr r3, [r4, #0x60]
0083522c  00 00 53 e3                                      cmp r3, #0
00835230  0e 00 00 da                                      ble #0x835270
00835234  00 50 a0 e3                                      mov r5, #0
00835238  05 60 a0 e1                                      mov r6, r5
0083523c  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00835240  00 00 50 e3                                      cmp r0, #0
00835244  04 00 00 0a                                      beq #0x83525c
00835248  9a 63 eb eb                                      bl #0x30e0b8
0083524c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00835250  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00835254  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835258  40 20 94 e5                                      ldr r2, [r4, #0x40]
0083525c  01 50 85 e2                                      add r5, r5, #1
00835260  05 00 53 e1                                      cmp r3, r5
00835264  f4 ff ff ca                                      bgt #0x83523c
00835268  00 00 52 e3                                      cmp r2, #0
0083526c  01 00 00 0a                                      beq #0x835278
00835270  02 00 a0 e1                                      mov r0, r2
00835274  8f 63 eb eb                                      bl #0x30e0b8
00835278  00 30 a0 e3                                      mov r3, #0
0083527c  40 30 84 e5                                      str r3, [r4, #0x40]
00835280  44 20 94 e5                                      ldr r2, [r4, #0x44]
00835284  00 00 52 e3                                      cmp r2, #0
00835288  15 00 00 0a                                      beq #0x8352e4
0083528c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835290  00 00 53 e3                                      cmp r3, #0
00835294  0e 00 00 da                                      ble #0x8352d4
00835298  00 50 a0 e3                                      mov r5, #0
0083529c  05 60 a0 e1                                      mov r6, r5
008352a0  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
008352a4  00 00 50 e3                                      cmp r0, #0
008352a8  04 00 00 0a                                      beq #0x8352c0
008352ac  81 63 eb eb                                      bl #0x30e0b8
008352b0  44 30 94 e5                                      ldr r3, [r4, #0x44]
008352b4  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
008352b8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008352bc  44 20 94 e5                                      ldr r2, [r4, #0x44]
008352c0  01 50 85 e2                                      add r5, r5, #1
008352c4  05 00 53 e1                                      cmp r3, r5
008352c8  f4 ff ff ca                                      bgt #0x8352a0
008352cc  00 00 52 e3                                      cmp r2, #0
008352d0  01 00 00 0a                                      beq #0x8352dc
008352d4  02 00 a0 e1                                      mov r0, r2
008352d8  76 63 eb eb                                      bl #0x30e0b8
008352dc  00 30 a0 e3                                      mov r3, #0
008352e0  44 30 84 e5                                      str r3, [r4, #0x44]
008352e4  48 20 94 e5                                      ldr r2, [r4, #0x48]
008352e8  00 00 52 e3                                      cmp r2, #0
008352ec  15 00 00 0a                                      beq #0x835348
008352f0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008352f4  00 00 53 e3                                      cmp r3, #0
008352f8  0e 00 00 da                                      ble #0x835338
008352fc  00 50 a0 e3                                      mov r5, #0
00835300  05 60 a0 e1                                      mov r6, r5
00835304  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00835308  00 00 50 e3                                      cmp r0, #0
0083530c  04 00 00 0a                                      beq #0x835324
00835310  68 63 eb eb                                      bl #0x30e0b8
00835314  48 30 94 e5                                      ldr r3, [r4, #0x48]
00835318  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0083531c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835320  48 20 94 e5                                      ldr r2, [r4, #0x48]
00835324  01 50 85 e2                                      add r5, r5, #1
00835328  05 00 53 e1                                      cmp r3, r5
0083532c  f4 ff ff ca                                      bgt #0x835304
00835330  00 00 52 e3                                      cmp r2, #0
00835334  01 00 00 0a                                      beq #0x835340
00835338  02 00 a0 e1                                      mov r0, r2
0083533c  5d 63 eb eb                                      bl #0x30e0b8
00835340  00 30 a0 e3                                      mov r3, #0
00835344  48 30 84 e5                                      str r3, [r4, #0x48]
00835348  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0083534c  00 00 52 e3                                      cmp r2, #0
00835350  15 00 00 0a                                      beq #0x8353ac
00835354  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835358  00 00 53 e3                                      cmp r3, #0
0083535c  0e 00 00 da                                      ble #0x83539c
00835360  00 50 a0 e3                                      mov r5, #0
00835364  05 60 a0 e1                                      mov r6, r5
00835368  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0083536c  00 00 50 e3                                      cmp r0, #0
00835370  04 00 00 0a                                      beq #0x835388
00835374  4f 63 eb eb                                      bl #0x30e0b8
00835378  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0083537c  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00835380  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835384  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00835388  01 50 85 e2                                      add r5, r5, #1
0083538c  05 00 53 e1                                      cmp r3, r5
00835390  f4 ff ff ca                                      bgt #0x835368
00835394  00 00 52 e3                                      cmp r2, #0
00835398  01 00 00 0a                                      beq #0x8353a4
0083539c  02 00 a0 e1                                      mov r0, r2
008353a0  44 63 eb eb                                      bl #0x30e0b8
008353a4  00 30 a0 e3                                      mov r3, #0
008353a8  4c 30 84 e5                                      str r3, [r4, #0x4c]
008353ac  50 20 94 e5                                      ldr r2, [r4, #0x50]
008353b0  00 00 52 e3                                      cmp r2, #0
008353b4  15 00 00 0a                                      beq #0x835410
008353b8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008353bc  00 00 53 e3                                      cmp r3, #0
008353c0  0e 00 00 da                                      ble #0x835400
008353c4  00 50 a0 e3                                      mov r5, #0
008353c8  05 60 a0 e1                                      mov r6, r5
008353cc  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
008353d0  00 00 50 e3                                      cmp r0, #0
008353d4  04 00 00 0a                                      beq #0x8353ec
008353d8  36 63 eb eb                                      bl #0x30e0b8
008353dc  50 30 94 e5                                      ldr r3, [r4, #0x50]
008353e0  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
008353e4  60 30 94 e5                                      ldr r3, [r4, #0x60]
008353e8  50 20 94 e5                                      ldr r2, [r4, #0x50]
008353ec  01 50 85 e2                                      add r5, r5, #1
008353f0  05 00 53 e1                                      cmp r3, r5
008353f4  f4 ff ff ca                                      bgt #0x8353cc
008353f8  00 00 52 e3                                      cmp r2, #0
008353fc  01 00 00 0a                                      beq #0x835408
00835400  02 00 a0 e1                                      mov r0, r2
00835404  2b 63 eb eb                                      bl #0x30e0b8
00835408  00 30 a0 e3                                      mov r3, #0
0083540c  50 30 84 e5                                      str r3, [r4, #0x50]
00835410  54 20 94 e5                                      ldr r2, [r4, #0x54]
00835414  00 00 52 e3                                      cmp r2, #0
00835418  15 00 00 0a                                      beq #0x835474
0083541c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00835420  00 00 53 e3                                      cmp r3, #0
00835424  0e 00 00 da                                      ble #0x835464
00835428  00 50 a0 e3                                      mov r5, #0
0083542c  05 60 a0 e1                                      mov r6, r5
00835430  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00835434  00 00 50 e3                                      cmp r0, #0
00835438  04 00 00 0a                                      beq #0x835450
0083543c  1d 63 eb eb                                      bl #0x30e0b8
00835440  54 30 94 e5                                      ldr r3, [r4, #0x54]
00835444  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00835448  60 30 94 e5                                      ldr r3, [r4, #0x60]
0083544c  54 20 94 e5                                      ldr r2, [r4, #0x54]
00835450  01 50 85 e2                                      add r5, r5, #1
00835454  05 00 53 e1                                      cmp r3, r5
00835458  f4 ff ff ca                                      bgt #0x835430
0083545c  00 00 52 e3                                      cmp r2, #0
00835460  01 00 00 0a                                      beq #0x83546c
00835464  02 00 a0 e1                                      mov r0, r2
00835468  12 63 eb eb                                      bl #0x30e0b8
0083546c  00 30 a0 e3                                      mov r3, #0
00835470  54 30 84 e5                                      str r3, [r4, #0x54]
00835474  00 30 a0 e3                                      mov r3, #0
00835478  60 30 84 e5                                      str r3, [r4, #0x60]
0083547c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00835480, declared_size=708, range_size=708, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage26processMySentMsgHeaderListEPc
; demangled: GLXPlayerMessage::processMySentMsgHeaderList(char*)
; decoder-mode: arm
00835480  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00835484  b0 a2 9f e5                                      ldr sl, [pc, #0x2b0]
00835488  b0 92 9f e5                                      ldr sb, [pc, #0x2b0]
0083548c  63 df 4d e2                                      sub sp, sp, #0x18c
00835490  0a a0 8f e0                                      add sl, pc, sl
00835494  09 30 9a e7                                      ldr r3, [sl, sb]
00835498  01 80 a0 e1                                      mov r8, r1
0083549c  00 50 a0 e1                                      mov r5, r0
008354a0  00 30 93 e5                                      ldr r3, [r3]
008354a4  84 31 8d e5                                      str r3, [sp, #0x184]
008354a8  47 ff ff eb                                      bl #0x8351cc
008354ac  00 00 58 e3                                      cmp r8, #0
008354b0  99 00 00 0a                                      beq #0x83571c
008354b4  08 00 a0 e1                                      mov r0, r8
008354b8  bb d6 ff eb                                      bl #0x82afac
008354bc  00 00 50 e3                                      cmp r0, #0
008354c0  95 00 00 da                                      ble #0x83571c
008354c4  04 60 8d e2                                      add r6, sp, #4
008354c8  41 7f 8d e2                                      add r7, sp, #0x104
008354cc  00 10 a0 e3                                      mov r1, #0
008354d0  01 2c a0 e3                                      mov r2, #0x100
008354d4  06 00 a0 e1                                      mov r0, r6
008354d8  e0 63 eb eb                                      bl #0x30e460
008354dc  80 20 a0 e3                                      mov r2, #0x80
008354e0  00 10 a0 e3                                      mov r1, #0
008354e4  07 00 a0 e1                                      mov r0, r7
008354e8  dc 63 eb eb                                      bl #0x30e460
008354ec  7c 30 a0 e3                                      mov r3, #0x7c
008354f0  07 10 a0 e1                                      mov r1, r7
008354f4  00 20 a0 e3                                      mov r2, #0
008354f8  08 00 a0 e1                                      mov r0, r8
008354fc  f7 d5 ff eb                                      bl #0x82ace0
00835500  07 00 a0 e1                                      mov r0, r7
00835504  80 20 a0 e3                                      mov r2, #0x80
00835508  00 10 a0 e3                                      mov r1, #0
0083550c  94 d7 ff eb                                      bl #0x82b364
00835510  7c 30 a0 e3                                      mov r3, #0x7c
00835514  07 10 a0 e1                                      mov r1, r7
00835518  01 20 a0 e3                                      mov r2, #1
0083551c  08 00 a0 e1                                      mov r0, r8
00835520  ee d5 ff eb                                      bl #0x82ace0
00835524  07 00 a0 e1                                      mov r0, r7
00835528  7c d7 ff eb                                      bl #0x82b320
0083552c  00 10 a0 e3                                      mov r1, #0
00835530  80 20 a0 e3                                      mov r2, #0x80
00835534  60 00 85 e5                                      str r0, [r5, #0x60]
00835538  07 00 a0 e1                                      mov r0, r7
0083553c  88 d7 ff eb                                      bl #0x82b364
00835540  60 00 95 e5                                      ldr r0, [r5, #0x60]
00835544  00 01 a0 e1                                      lsl r0, r0, #2
00835548  e0 62 eb eb                                      bl #0x30e0d0
0083554c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835550  3c 00 85 e5                                      str r0, [r5, #0x3c]
00835554  03 01 a0 e1                                      lsl r0, r3, #2
00835558  dc 62 eb eb                                      bl #0x30e0d0
0083555c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835560  40 00 85 e5                                      str r0, [r5, #0x40]
00835564  03 01 a0 e1                                      lsl r0, r3, #2
00835568  d8 62 eb eb                                      bl #0x30e0d0
0083556c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835570  4c 00 85 e5                                      str r0, [r5, #0x4c]
00835574  03 01 a0 e1                                      lsl r0, r3, #2
00835578  d4 62 eb eb                                      bl #0x30e0d0
0083557c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835580  50 00 85 e5                                      str r0, [r5, #0x50]
00835584  03 01 a0 e1                                      lsl r0, r3, #2
00835588  d0 62 eb eb                                      bl #0x30e0d0
0083558c  80 20 a0 e3                                      mov r2, #0x80
00835590  54 00 85 e5                                      str r0, [r5, #0x54]
00835594  00 10 a0 e3                                      mov r1, #0
00835598  07 00 a0 e1                                      mov r0, r7
0083559c  70 d7 ff eb                                      bl #0x82b364
008355a0  7c 30 a0 e3                                      mov r3, #0x7c
008355a4  08 00 a0 e1                                      mov r0, r8
008355a8  07 10 a0 e1                                      mov r1, r7
008355ac  02 20 a0 e3                                      mov r2, #2
008355b0  ca d5 ff eb                                      bl #0x82ace0
008355b4  60 30 95 e5                                      ldr r3, [r5, #0x60]
008355b8  00 00 53 e3                                      cmp r3, #0
008355bc  00 40 a0 c3                                      movgt r4, #0
008355c0  55 00 00 da                                      ble #0x83571c
008355c4  01 2c a0 e3                                      mov r2, #0x100
008355c8  06 00 a0 e1                                      mov r0, r6
008355cc  00 10 a0 e3                                      mov r1, #0
008355d0  63 d7 ff eb                                      bl #0x82b364
008355d4  03 20 84 e2                                      add r2, r4, #3
008355d8  06 10 a0 e1                                      mov r1, r6
008355dc  7c 30 a0 e3                                      mov r3, #0x7c
008355e0  08 00 a0 e1                                      mov r0, r8
008355e4  bd d5 ff eb                                      bl #0x82ace0
008355e8  80 00 a0 e3                                      mov r0, #0x80
008355ec  40 b0 95 e5                                      ldr fp, [r5, #0x40]
008355f0  b6 62 eb eb                                      bl #0x30e0d0
008355f4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
008355f8  80 00 a0 e3                                      mov r0, #0x80
008355fc  4c b0 95 e5                                      ldr fp, [r5, #0x4c]
00835600  b2 62 eb eb                                      bl #0x30e0d0
00835604  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
00835608  80 00 a0 e3                                      mov r0, #0x80
0083560c  50 b0 95 e5                                      ldr fp, [r5, #0x50]
00835610  ae 62 eb eb                                      bl #0x30e0d0
00835614  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
00835618  80 00 a0 e3                                      mov r0, #0x80
0083561c  54 b0 95 e5                                      ldr fp, [r5, #0x54]
00835620  aa 62 eb eb                                      bl #0x30e0d0
00835624  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
00835628  40 30 95 e5                                      ldr r3, [r5, #0x40]
0083562c  00 10 a0 e3                                      mov r1, #0
00835630  80 20 a0 e3                                      mov r2, #0x80
00835634  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835638  49 d7 ff eb                                      bl #0x82b364
0083563c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00835640  00 10 a0 e3                                      mov r1, #0
00835644  80 20 a0 e3                                      mov r2, #0x80
00835648  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0083564c  44 d7 ff eb                                      bl #0x82b364
00835650  50 30 95 e5                                      ldr r3, [r5, #0x50]
00835654  00 10 a0 e3                                      mov r1, #0
00835658  80 20 a0 e3                                      mov r2, #0x80
0083565c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835660  3f d7 ff eb                                      bl #0x82b364
00835664  54 30 95 e5                                      ldr r3, [r5, #0x54]
00835668  00 10 a0 e3                                      mov r1, #0
0083566c  80 20 a0 e3                                      mov r2, #0x80
00835670  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835674  3a d7 ff eb                                      bl #0x82b364
00835678  07 00 a0 e1                                      mov r0, r7
0083567c  80 20 a0 e3                                      mov r2, #0x80
00835680  00 10 a0 e3                                      mov r1, #0
00835684  36 d7 ff eb                                      bl #0x82b364
00835688  07 10 a0 e1                                      mov r1, r7
0083568c  00 20 a0 e3                                      mov r2, #0
00835690  5e 30 a0 e3                                      mov r3, #0x5e
00835694  06 00 a0 e1                                      mov r0, r6
00835698  90 d5 ff eb                                      bl #0x82ace0
0083569c  07 00 a0 e1                                      mov r0, r7
008356a0  3c b0 95 e5                                      ldr fp, [r5, #0x3c]
008356a4  1d d7 ff eb                                      bl #0x82b320
008356a8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
008356ac  40 10 95 e5                                      ldr r1, [r5, #0x40]
008356b0  01 20 a0 e3                                      mov r2, #1
008356b4  5e 30 a0 e3                                      mov r3, #0x5e
008356b8  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
008356bc  06 00 a0 e1                                      mov r0, r6
008356c0  86 d5 ff eb                                      bl #0x82ace0
008356c4  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
008356c8  02 20 a0 e3                                      mov r2, #2
008356cc  5e 30 a0 e3                                      mov r3, #0x5e
008356d0  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
008356d4  06 00 a0 e1                                      mov r0, r6
008356d8  80 d5 ff eb                                      bl #0x82ace0
008356dc  50 10 95 e5                                      ldr r1, [r5, #0x50]
008356e0  03 20 a0 e3                                      mov r2, #3
008356e4  5e 30 a0 e3                                      mov r3, #0x5e
008356e8  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
008356ec  06 00 a0 e1                                      mov r0, r6
008356f0  7a d5 ff eb                                      bl #0x82ace0
008356f4  54 30 95 e5                                      ldr r3, [r5, #0x54]
008356f8  06 00 a0 e1                                      mov r0, r6
008356fc  04 20 a0 e3                                      mov r2, #4
00835700  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00835704  5e 30 a0 e3                                      mov r3, #0x5e
00835708  74 d5 ff eb                                      bl #0x82ace0
0083570c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835710  01 40 84 e2                                      add r4, r4, #1
00835714  04 00 53 e1                                      cmp r3, r4
00835718  a9 ff ff ca                                      bgt #0x8355c4
0083571c  09 30 9a e7                                      ldr r3, [sl, sb]
00835720  84 21 9d e5                                      ldr r2, [sp, #0x184]
00835724  00 30 93 e5                                      ldr r3, [r3]
00835728  03 00 52 e1                                      cmp r2, r3
0083572c  01 00 00 1a                                      bne #0x835738
00835730  63 df 8d e2                                      add sp, sp, #0x18c
00835734  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00835738  f4 62 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083573c  00 f6 15 00 ac 40 00 00                          .byte 0x00, 0xf6, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00835744, declared_size=872, range_size=872, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage20processMsgHeaderListEPc
; demangled: GLXPlayerMessage::processMsgHeaderList(char*)
; decoder-mode: arm
00835744  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00835748  54 93 9f e5                                      ldr sb, [pc, #0x354]
0083574c  54 b3 9f e5                                      ldr fp, [pc, #0x354]
00835750  63 df 4d e2                                      sub sp, sp, #0x18c
00835754  09 90 8f e0                                      add sb, pc, sb
00835758  0b 30 99 e7                                      ldr r3, [sb, fp]
0083575c  01 80 a0 e1                                      mov r8, r1
00835760  00 50 a0 e1                                      mov r5, r0
00835764  00 30 93 e5                                      ldr r3, [r3]
00835768  84 31 8d e5                                      str r3, [sp, #0x184]
0083576c  96 fe ff eb                                      bl #0x8351cc
00835770  00 00 58 e3                                      cmp r8, #0
00835774  c2 00 00 0a                                      beq #0x835a84
00835778  08 00 a0 e1                                      mov r0, r8
0083577c  0a d6 ff eb                                      bl #0x82afac
00835780  00 00 50 e3                                      cmp r0, #0
00835784  be 00 00 da                                      ble #0x835a84
00835788  04 70 8d e2                                      add r7, sp, #4
0083578c  41 6f 8d e2                                      add r6, sp, #0x104
00835790  00 10 a0 e3                                      mov r1, #0
00835794  01 2c a0 e3                                      mov r2, #0x100
00835798  07 00 a0 e1                                      mov r0, r7
0083579c  2f 63 eb eb                                      bl #0x30e460
008357a0  80 20 a0 e3                                      mov r2, #0x80
008357a4  00 10 a0 e3                                      mov r1, #0
008357a8  06 00 a0 e1                                      mov r0, r6
008357ac  2b 63 eb eb                                      bl #0x30e460
008357b0  7c 30 a0 e3                                      mov r3, #0x7c
008357b4  06 10 a0 e1                                      mov r1, r6
008357b8  00 20 a0 e3                                      mov r2, #0
008357bc  08 00 a0 e1                                      mov r0, r8
008357c0  46 d5 ff eb                                      bl #0x82ace0
008357c4  06 00 a0 e1                                      mov r0, r6
008357c8  80 20 a0 e3                                      mov r2, #0x80
008357cc  00 10 a0 e3                                      mov r1, #0
008357d0  e3 d6 ff eb                                      bl #0x82b364
008357d4  7c 30 a0 e3                                      mov r3, #0x7c
008357d8  06 10 a0 e1                                      mov r1, r6
008357dc  01 20 a0 e3                                      mov r2, #1
008357e0  08 00 a0 e1                                      mov r0, r8
008357e4  3d d5 ff eb                                      bl #0x82ace0
008357e8  06 00 a0 e1                                      mov r0, r6
008357ec  cb d6 ff eb                                      bl #0x82b320
008357f0  00 10 a0 e3                                      mov r1, #0
008357f4  80 20 a0 e3                                      mov r2, #0x80
008357f8  60 00 85 e5                                      str r0, [r5, #0x60]
008357fc  06 00 a0 e1                                      mov r0, r6
00835800  d7 d6 ff eb                                      bl #0x82b364
00835804  60 00 95 e5                                      ldr r0, [r5, #0x60]
00835808  00 01 a0 e1                                      lsl r0, r0, #2
0083580c  2f 62 eb eb                                      bl #0x30e0d0
00835810  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835814  3c 00 85 e5                                      str r0, [r5, #0x3c]
00835818  03 01 a0 e1                                      lsl r0, r3, #2
0083581c  2b 62 eb eb                                      bl #0x30e0d0
00835820  5c 00 85 e5                                      str r0, [r5, #0x5c]
00835824  60 00 95 e5                                      ldr r0, [r5, #0x60]
00835828  28 62 eb eb                                      bl #0x30e0d0
0083582c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835830  58 00 85 e5                                      str r0, [r5, #0x58]
00835834  03 01 a0 e1                                      lsl r0, r3, #2
00835838  24 62 eb eb                                      bl #0x30e0d0
0083583c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835840  40 00 85 e5                                      str r0, [r5, #0x40]
00835844  03 01 a0 e1                                      lsl r0, r3, #2
00835848  20 62 eb eb                                      bl #0x30e0d0
0083584c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835850  48 00 85 e5                                      str r0, [r5, #0x48]
00835854  03 01 a0 e1                                      lsl r0, r3, #2
00835858  1c 62 eb eb                                      bl #0x30e0d0
0083585c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835860  44 00 85 e5                                      str r0, [r5, #0x44]
00835864  03 01 a0 e1                                      lsl r0, r3, #2
00835868  18 62 eb eb                                      bl #0x30e0d0
0083586c  80 20 a0 e3                                      mov r2, #0x80
00835870  54 00 85 e5                                      str r0, [r5, #0x54]
00835874  00 10 a0 e3                                      mov r1, #0
00835878  06 00 a0 e1                                      mov r0, r6
0083587c  b8 d6 ff eb                                      bl #0x82b364
00835880  7c 30 a0 e3                                      mov r3, #0x7c
00835884  08 00 a0 e1                                      mov r0, r8
00835888  06 10 a0 e1                                      mov r1, r6
0083588c  02 20 a0 e3                                      mov r2, #2
00835890  12 d5 ff eb                                      bl #0x82ace0
00835894  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835898  00 00 53 e3                                      cmp r3, #0
0083589c  00 40 a0 c3                                      movgt r4, #0
008358a0  77 00 00 da                                      ble #0x835a84
008358a4  01 2c a0 e3                                      mov r2, #0x100
008358a8  07 00 a0 e1                                      mov r0, r7
008358ac  00 10 a0 e3                                      mov r1, #0
008358b0  ab d6 ff eb                                      bl #0x82b364
008358b4  03 20 84 e2                                      add r2, r4, #3
008358b8  07 10 a0 e1                                      mov r1, r7
008358bc  7c 30 a0 e3                                      mov r3, #0x7c
008358c0  08 00 a0 e1                                      mov r0, r8
008358c4  05 d5 ff eb                                      bl #0x82ace0
008358c8  80 00 a0 e3                                      mov r0, #0x80
008358cc  40 a0 95 e5                                      ldr sl, [r5, #0x40]
008358d0  fe 61 eb eb                                      bl #0x30e0d0
008358d4  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
008358d8  80 00 a0 e3                                      mov r0, #0x80
008358dc  48 a0 95 e5                                      ldr sl, [r5, #0x48]
008358e0  fa 61 eb eb                                      bl #0x30e0d0
008358e4  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
008358e8  80 00 a0 e3                                      mov r0, #0x80
008358ec  44 a0 95 e5                                      ldr sl, [r5, #0x44]
008358f0  f6 61 eb eb                                      bl #0x30e0d0
008358f4  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
008358f8  80 00 a0 e3                                      mov r0, #0x80
008358fc  54 a0 95 e5                                      ldr sl, [r5, #0x54]
00835900  f2 61 eb eb                                      bl #0x30e0d0
00835904  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
00835908  40 30 95 e5                                      ldr r3, [r5, #0x40]
0083590c  00 10 a0 e3                                      mov r1, #0
00835910  80 20 a0 e3                                      mov r2, #0x80
00835914  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835918  91 d6 ff eb                                      bl #0x82b364
0083591c  48 30 95 e5                                      ldr r3, [r5, #0x48]
00835920  00 10 a0 e3                                      mov r1, #0
00835924  80 20 a0 e3                                      mov r2, #0x80
00835928  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0083592c  8c d6 ff eb                                      bl #0x82b364
00835930  44 30 95 e5                                      ldr r3, [r5, #0x44]
00835934  00 10 a0 e3                                      mov r1, #0
00835938  80 20 a0 e3                                      mov r2, #0x80
0083593c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835940  87 d6 ff eb                                      bl #0x82b364
00835944  54 30 95 e5                                      ldr r3, [r5, #0x54]
00835948  00 10 a0 e3                                      mov r1, #0
0083594c  80 20 a0 e3                                      mov r2, #0x80
00835950  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00835954  82 d6 ff eb                                      bl #0x82b364
00835958  06 00 a0 e1                                      mov r0, r6
0083595c  80 20 a0 e3                                      mov r2, #0x80
00835960  00 10 a0 e3                                      mov r1, #0
00835964  7e d6 ff eb                                      bl #0x82b364
00835968  5e 30 a0 e3                                      mov r3, #0x5e
0083596c  06 10 a0 e1                                      mov r1, r6
00835970  00 20 a0 e3                                      mov r2, #0
00835974  07 00 a0 e1                                      mov r0, r7
00835978  d8 d4 ff eb                                      bl #0x82ace0
0083597c  06 00 a0 e1                                      mov r0, r6
00835980  3c a0 95 e5                                      ldr sl, [r5, #0x3c]
00835984  65 d6 ff eb                                      bl #0x82b320
00835988  80 20 a0 e3                                      mov r2, #0x80
0083598c  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
00835990  00 10 a0 e3                                      mov r1, #0
00835994  06 00 a0 e1                                      mov r0, r6
00835998  71 d6 ff eb                                      bl #0x82b364
0083599c  06 10 a0 e1                                      mov r1, r6
008359a0  01 20 a0 e3                                      mov r2, #1
008359a4  5e 30 a0 e3                                      mov r3, #0x5e
008359a8  07 00 a0 e1                                      mov r0, r7
008359ac  cb d4 ff eb                                      bl #0x82ace0
008359b0  06 00 a0 e1                                      mov r0, r6
008359b4  5c a0 95 e5                                      ldr sl, [r5, #0x5c]
008359b8  58 d6 ff eb                                      bl #0x82b320
008359bc  04 01 8a e7                                      str r0, [sl, r4, lsl #2]
008359c0  40 10 95 e5                                      ldr r1, [r5, #0x40]
008359c4  02 20 a0 e3                                      mov r2, #2
008359c8  5e 30 a0 e3                                      mov r3, #0x5e
008359cc  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
008359d0  07 00 a0 e1                                      mov r0, r7
008359d4  c1 d4 ff eb                                      bl #0x82ace0
008359d8  48 10 95 e5                                      ldr r1, [r5, #0x48]
008359dc  03 20 a0 e3                                      mov r2, #3
008359e0  5e 30 a0 e3                                      mov r3, #0x5e
008359e4  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
008359e8  07 00 a0 e1                                      mov r0, r7
008359ec  bb d4 ff eb                                      bl #0x82ace0
008359f0  44 10 95 e5                                      ldr r1, [r5, #0x44]
008359f4  04 20 a0 e3                                      mov r2, #4
008359f8  5e 30 a0 e3                                      mov r3, #0x5e
008359fc  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
00835a00  07 00 a0 e1                                      mov r0, r7
00835a04  b5 d4 ff eb                                      bl #0x82ace0
00835a08  54 10 95 e5                                      ldr r1, [r5, #0x54]
00835a0c  5e 30 a0 e3                                      mov r3, #0x5e
00835a10  05 20 a0 e3                                      mov r2, #5
00835a14  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
00835a18  07 00 a0 e1                                      mov r0, r7
00835a1c  af d4 ff eb                                      bl #0x82ace0
00835a20  06 00 a0 e1                                      mov r0, r6
00835a24  80 20 a0 e3                                      mov r2, #0x80
00835a28  00 10 a0 e3                                      mov r1, #0
00835a2c  4c d6 ff eb                                      bl #0x82b364
00835a30  5e 30 a0 e3                                      mov r3, #0x5e
00835a34  06 10 a0 e1                                      mov r1, r6
00835a38  06 20 a0 e3                                      mov r2, #6
00835a3c  07 00 a0 e1                                      mov r0, r7
00835a40  a6 d4 ff eb                                      bl #0x82ace0
00835a44  06 00 a0 e1                                      mov r0, r6
00835a48  34 d6 ff eb                                      bl #0x82b320
00835a4c  80 20 a0 e3                                      mov r2, #0x80
00835a50  00 a0 a0 e1                                      mov sl, r0
00835a54  00 10 a0 e3                                      mov r1, #0
00835a58  06 00 a0 e1                                      mov r0, r6
00835a5c  40 d6 ff eb                                      bl #0x82b364
00835a60  58 30 95 e5                                      ldr r3, [r5, #0x58]
00835a64  00 00 5a e3                                      cmp sl, #0
00835a68  01 20 a0 13                                      movne r2, #1
00835a6c  04 20 c3 17                                      strbne r2, [r3, r4]
00835a70  04 a0 c3 07                                      strbeq sl, [r3, r4]
00835a74  60 30 95 e5                                      ldr r3, [r5, #0x60]
00835a78  01 40 84 e2                                      add r4, r4, #1
00835a7c  04 00 53 e1                                      cmp r3, r4
00835a80  87 ff ff ca                                      bgt #0x8358a4
00835a84  0b 30 99 e7                                      ldr r3, [sb, fp]
00835a88  84 21 9d e5                                      ldr r2, [sp, #0x184]
00835a8c  00 30 93 e5                                      ldr r3, [r3]
00835a90  03 00 52 e1                                      cmp r2, r3
00835a94  01 00 00 1a                                      bne #0x835aa0
00835a98  63 df 8d e2                                      add sp, sp, #0x18c
00835a9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00835aa0  1a 62 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835aa4  3c f3 15 00 ac 40 00 00                          .byte 0x3c, 0xf3, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00835aac, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage26SendGetMySentMessageHeaderEii
; demangled: GLXPlayerMessage::SendGetMySentMessageHeader(int, int)
; decoder-mode: arm
00835aac  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00835ab0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00835ab4  ac c0 9f e5                                      ldr ip, [pc, #0xac]
00835ab8  03 30 8f e0                                      add r3, pc, r3
00835abc  01 da 4d e2                                      sub sp, sp, #0x1000
00835ac0  0c 60 93 e7                                      ldr r6, [r3, ip]
00835ac4  18 d0 4d e2                                      sub sp, sp, #0x18
00835ac8  02 80 a0 e1                                      mov r8, r2
00835acc  00 c0 96 e5                                      ldr ip, [r6]
00835ad0  01 2a a0 e3                                      mov r2, #0x1000
00835ad4  18 50 8d e2                                      add r5, sp, #0x18
00835ad8  02 e0 8d e0                                      add lr, sp, r2
00835adc  04 50 45 e2                                      sub r5, r5, #4
00835ae0  00 40 a0 e1                                      mov r4, r0
00835ae4  14 c0 8e e5                                      str ip, [lr, #0x14]
00835ae8  01 70 a0 e1                                      mov r7, r1
00835aec  05 00 a0 e1                                      mov r0, r5
00835af0  00 10 a0 e3                                      mov r1, #0
00835af4  1a d6 ff eb                                      bl #0x82b364
00835af8  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00835afc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00835b00  08 30 94 e5                                      ldr r3, [r4, #8]
00835b04  5c 20 a0 e3                                      mov r2, #0x5c
00835b08  01 10 8f e0                                      add r1, pc, r1
00835b0c  05 00 a0 e1                                      mov r0, r5
00835b10  00 c0 8d e5                                      str ip, [sp]
00835b14  80 01 8d e9                                      stmib sp, {r7, r8}
00835b18  f1 63 eb eb                                      bl #0x30eae4
00835b1c  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00835b20  05 10 a0 e1                                      mov r1, r5
00835b24  00 00 8f e0                                      add r0, pc, r0
00835b28  15 d7 ff eb                                      bl #0x82b784
00835b2c  00 30 94 e5                                      ldr r3, [r4]
00835b30  04 00 a0 e1                                      mov r0, r4
00835b34  05 10 a0 e1                                      mov r1, r5
00835b38  0f e0 a0 e1                                      mov lr, pc
00835b3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835b40  01 3a 8d e2                                      add r3, sp, #0x1000
00835b44  14 20 93 e5                                      ldr r2, [r3, #0x14]
00835b48  00 30 96 e5                                      ldr r3, [r6]
00835b4c  03 00 52 e1                                      cmp r2, r3
00835b50  02 00 00 1a                                      bne #0x835b60
00835b54  18 d0 8d e2                                      add sp, sp, #0x18
00835b58  01 da 8d e2                                      add sp, sp, #0x1000
00835b5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00835b60  ea 61 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835b64  d8 ef 15 00 ac 40 00 00 c8 69 0d 00 2c 79 0d 00  .byte 0xd8, 0xef, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x69, 0x0d, 0x00, 0x2c, 0x79, 0x0d, 0x00

; FUNCTION 0x00835b74, declared_size=188, range_size=188, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage25SendGetMySentMessageCountEv
; demangled: GLXPlayerMessage::SendGetMySentMessageCount()
; decoder-mode: arm
00835b74  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00835b78  70 40 2d e9                                      push {r4, r5, r6, lr}
00835b7c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00835b80  03 30 8f e0                                      add r3, pc, r3
00835b84  01 da 4d e2                                      sub sp, sp, #0x1000
00835b88  02 60 93 e7                                      ldr r6, [r3, r2]
00835b8c  10 d0 4d e2                                      sub sp, sp, #0x10
00835b90  01 2a a0 e3                                      mov r2, #0x1000
00835b94  00 c0 96 e5                                      ldr ip, [r6]
00835b98  10 50 8d e2                                      add r5, sp, #0x10
00835b9c  02 e0 8d e0                                      add lr, sp, r2
00835ba0  04 50 45 e2                                      sub r5, r5, #4
00835ba4  00 40 a0 e1                                      mov r4, r0
00835ba8  0c c0 8e e5                                      str ip, [lr, #0xc]
00835bac  05 00 a0 e1                                      mov r0, r5
00835bb0  00 10 a0 e3                                      mov r1, #0
00835bb4  ea d5 ff eb                                      bl #0x82b364
00835bb8  68 10 9f e5                                      ldr r1, [pc, #0x68]
00835bbc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00835bc0  08 30 94 e5                                      ldr r3, [r4, #8]
00835bc4  5b 20 a0 e3                                      mov r2, #0x5b
00835bc8  01 10 8f e0                                      add r1, pc, r1
00835bcc  05 00 a0 e1                                      mov r0, r5
00835bd0  00 c0 8d e5                                      str ip, [sp]
00835bd4  c2 63 eb eb                                      bl #0x30eae4
00835bd8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00835bdc  05 10 a0 e1                                      mov r1, r5
00835be0  00 00 8f e0                                      add r0, pc, r0
00835be4  e6 d6 ff eb                                      bl #0x82b784
00835be8  00 30 94 e5                                      ldr r3, [r4]
00835bec  04 00 a0 e1                                      mov r0, r4
00835bf0  05 10 a0 e1                                      mov r1, r5
00835bf4  0f e0 a0 e1                                      mov lr, pc
00835bf8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835bfc  01 3a 8d e2                                      add r3, sp, #0x1000
00835c00  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00835c04  00 30 96 e5                                      ldr r3, [r6]
00835c08  03 00 52 e1                                      cmp r2, r3
00835c0c  02 00 00 1a                                      bne #0x835c1c
00835c10  10 d0 8d e2                                      add sp, sp, #0x10
00835c14  01 da 8d e2                                      add sp, sp, #0x1000
00835c18  70 80 bd e8                                      pop {r4, r5, r6, pc}
00835c1c  bb 61 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835c20  10 ef 15 00 ac 40 00 00 a8 68 0d 00 90 78 0d 00  .byte 0x10, 0xef, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x68, 0x0d, 0x00, 0x90, 0x78, 0x0d, 0x00

; FUNCTION 0x00835c30, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage20SendDelMySentMessageEi
; demangled: GLXPlayerMessage::SendDelMySentMessage(int)
; decoder-mode: arm
00835c30  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00835c34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00835c38  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00835c3c  03 30 8f e0                                      add r3, pc, r3
00835c40  01 da 4d e2                                      sub sp, sp, #0x1000
00835c44  02 60 93 e7                                      ldr r6, [r3, r2]
00835c48  14 d0 4d e2                                      sub sp, sp, #0x14
00835c4c  01 2a a0 e3                                      mov r2, #0x1000
00835c50  00 c0 96 e5                                      ldr ip, [r6]
00835c54  10 50 8d e2                                      add r5, sp, #0x10
00835c58  02 e0 8d e0                                      add lr, sp, r2
00835c5c  04 50 45 e2                                      sub r5, r5, #4
00835c60  00 40 a0 e1                                      mov r4, r0
00835c64  0c c0 8e e5                                      str ip, [lr, #0xc]
00835c68  01 70 a0 e1                                      mov r7, r1
00835c6c  05 00 a0 e1                                      mov r0, r5
00835c70  00 10 a0 e3                                      mov r1, #0
00835c74  ba d5 ff eb                                      bl #0x82b364
00835c78  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00835c7c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00835c80  08 30 94 e5                                      ldr r3, [r4, #8]
00835c84  5e 20 a0 e3                                      mov r2, #0x5e
00835c88  01 10 8f e0                                      add r1, pc, r1
00835c8c  05 00 a0 e1                                      mov r0, r5
00835c90  00 c0 8d e5                                      str ip, [sp]
00835c94  04 70 8d e5                                      str r7, [sp, #4]
00835c98  91 63 eb eb                                      bl #0x30eae4
00835c9c  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00835ca0  05 10 a0 e1                                      mov r1, r5
00835ca4  00 00 8f e0                                      add r0, pc, r0
00835ca8  b5 d6 ff eb                                      bl #0x82b784
00835cac  00 30 94 e5                                      ldr r3, [r4]
00835cb0  04 00 a0 e1                                      mov r0, r4
00835cb4  05 10 a0 e1                                      mov r1, r5
00835cb8  0f e0 a0 e1                                      mov lr, pc
00835cbc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835cc0  01 3a 8d e2                                      add r3, sp, #0x1000
00835cc4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00835cc8  00 30 96 e5                                      ldr r3, [r6]
00835ccc  03 00 52 e1                                      cmp r2, r3
00835cd0  02 00 00 1a                                      bne #0x835ce0
00835cd4  14 d0 8d e2                                      add sp, sp, #0x14
00835cd8  01 da 8d e2                                      add sp, sp, #0x1000
00835cdc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00835ce0  8a 61 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835ce4  54 ee 15 00 ac 40 00 00 20 78 0d 00 1c 78 0d 00  .byte 0x54, 0xee, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x78, 0x0d, 0x00, 0x1c, 0x78, 0x0d, 0x00

; FUNCTION 0x00835cf4, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage17SendDeleteMessageEi
; demangled: GLXPlayerMessage::SendDeleteMessage(int)
; decoder-mode: arm
00835cf4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00835cf8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00835cfc  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00835d00  03 30 8f e0                                      add r3, pc, r3
00835d04  01 da 4d e2                                      sub sp, sp, #0x1000
00835d08  02 60 93 e7                                      ldr r6, [r3, r2]
00835d0c  14 d0 4d e2                                      sub sp, sp, #0x14
00835d10  01 2a a0 e3                                      mov r2, #0x1000
00835d14  00 c0 96 e5                                      ldr ip, [r6]
00835d18  10 50 8d e2                                      add r5, sp, #0x10
00835d1c  02 e0 8d e0                                      add lr, sp, r2
00835d20  04 50 45 e2                                      sub r5, r5, #4
00835d24  00 40 a0 e1                                      mov r4, r0
00835d28  0c c0 8e e5                                      str ip, [lr, #0xc]
00835d2c  01 70 a0 e1                                      mov r7, r1
00835d30  05 00 a0 e1                                      mov r0, r5
00835d34  00 10 a0 e3                                      mov r1, #0
00835d38  89 d5 ff eb                                      bl #0x82b364
00835d3c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00835d40  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00835d44  08 30 94 e5                                      ldr r3, [r4, #8]
00835d48  4e 20 a0 e3                                      mov r2, #0x4e
00835d4c  01 10 8f e0                                      add r1, pc, r1
00835d50  05 00 a0 e1                                      mov r0, r5
00835d54  00 c0 8d e5                                      str ip, [sp]
00835d58  04 70 8d e5                                      str r7, [sp, #4]
00835d5c  60 63 eb eb                                      bl #0x30eae4
00835d60  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00835d64  05 10 a0 e1                                      mov r1, r5
00835d68  00 00 8f e0                                      add r0, pc, r0
00835d6c  84 d6 ff eb                                      bl #0x82b784
00835d70  00 30 94 e5                                      ldr r3, [r4]
00835d74  04 00 a0 e1                                      mov r0, r4
00835d78  05 10 a0 e1                                      mov r1, r5
00835d7c  0f e0 a0 e1                                      mov lr, pc
00835d80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835d84  01 3a 8d e2                                      add r3, sp, #0x1000
00835d88  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00835d8c  00 30 96 e5                                      ldr r3, [r6]
00835d90  03 00 52 e1                                      cmp r2, r3
00835d94  02 00 00 1a                                      bne #0x835da4
00835d98  14 d0 8d e2                                      add sp, sp, #0x14
00835d9c  01 da 8d e2                                      add sp, sp, #0x1000
00835da0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00835da4  59 61 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835da8  90 ed 15 00 ac 40 00 00 5c 77 0d 00 78 77 0d 00  .byte 0x90, 0xed, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x77, 0x0d, 0x00, 0x78, 0x77, 0x0d, 0x00

; FUNCTION 0x00835db8, declared_size=532, range_size=532, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage17SendOnlineMessageEPciS0_S0_b
; demangled: GLXPlayerMessage::SendOnlineMessage(char*, int, char*, char*, bool)
; decoder-mode: arm
00835db8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00835dbc  e4 41 9f e5                                      ldr r4, [pc, #0x1e4]
00835dc0  e4 81 9f e5                                      ldr r8, [pc, #0x1e4]
00835dc4  01 da 4d e2                                      sub sp, sp, #0x1000
00835dc8  04 40 8f e0                                      add r4, pc, r4
00835dcc  08 c0 94 e7                                      ldr ip, [r4, r8]
00835dd0  2c d0 4d e2                                      sub sp, sp, #0x2c
00835dd4  02 70 a0 e1                                      mov r7, r2
00835dd8  01 2a a0 e3                                      mov r2, #0x1000
00835ddc  02 e0 8d e0                                      add lr, sp, r2
00835de0  00 c0 9c e5                                      ldr ip, [ip]
00835de4  28 60 8d e2                                      add r6, sp, #0x28
00835de8  03 b0 a0 e1                                      mov fp, r3
00835dec  50 30 9e e5                                      ldr r3, [lr, #0x50]
00835df0  04 60 46 e2                                      sub r6, r6, #4
00835df4  24 c0 8e e5                                      str ip, [lr, #0x24]
00835df8  00 50 a0 e1                                      mov r5, r0
00835dfc  01 90 a0 e1                                      mov sb, r1
00835e00  06 00 a0 e1                                      mov r0, r6
00835e04  00 10 a0 e3                                      mov r1, #0
00835e08  1c 30 8d e5                                      str r3, [sp, #0x1c]
00835e0c  54 a0 de e5                                      ldrb sl, [lr, #0x54]
00835e10  53 d5 ff eb                                      bl #0x82b364
00835e14  08 00 57 e3                                      cmp r7, #8
00835e18  17 00 00 0a                                      beq #0x835e7c
00835e1c  00 00 59 e3                                      cmp sb, #0
00835e20  00 00 5b 13                                      cmpne fp, #0
00835e24  03 00 00 0a                                      beq #0x835e38
00835e28  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00835e2c  01 00 57 e3                                      cmp r7, #1
00835e30  00 00 5c 13                                      cmpne ip, #0
00835e34  33 00 00 1a                                      bne #0x835f08
00835e38  04 30 95 e5                                      ldr r3, [r5, #4]
00835e3c  4d 10 a0 e3                                      mov r1, #0x4d
00835e40  63 20 e0 e3                                      mvn r2, #0x63
00835e44  03 00 a0 e1                                      mov r0, r3
00835e48  00 30 93 e5                                      ldr r3, [r3]
00835e4c  0f e0 a0 e1                                      mov lr, pc
00835e50  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835e54  00 00 a0 e3                                      mov r0, #0
00835e58  08 30 94 e7                                      ldr r3, [r4, r8]
00835e5c  01 1a 8d e2                                      add r1, sp, #0x1000
00835e60  24 20 91 e5                                      ldr r2, [r1, #0x24]
00835e64  00 30 93 e5                                      ldr r3, [r3]
00835e68  03 00 52 e1                                      cmp r2, r3
00835e6c  4c 00 00 1a                                      bne #0x835fa4
00835e70  2c d0 8d e2                                      add sp, sp, #0x2c
00835e74  01 da 8d e2                                      add sp, sp, #0x1000
00835e78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00835e7c  00 00 59 e3                                      cmp sb, #0
00835e80  3e 00 00 0a                                      beq #0x835f80
00835e84  00 00 5a e3                                      cmp sl, #0
00835e88  17 00 00 1a                                      bne #0x835eec
00835e8c  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
00835e90  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
00835e94  08 30 95 e5                                      ldr r3, [r5, #8]
00835e98  0c e0 95 e5                                      ldr lr, [r5, #0xc]
00835e9c  01 10 8f e0                                      add r1, pc, r1
00835ea0  0c c0 8f e0                                      add ip, pc, ip
00835ea4  06 00 a0 e1                                      mov r0, r6
00835ea8  4d 20 a0 e3                                      mov r2, #0x4d
00835eac  00 e0 8d e5                                      str lr, [sp]
00835eb0  04 70 8d e5                                      str r7, [sp, #4]
00835eb4  0c c0 8d e5                                      str ip, [sp, #0xc]
00835eb8  10 90 8d e5                                      str sb, [sp, #0x10]
00835ebc  08 c0 8d e5                                      str ip, [sp, #8]
00835ec0  07 63 eb eb                                      bl #0x30eae4
00835ec4  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00835ec8  06 10 a0 e1                                      mov r1, r6
00835ecc  00 00 8f e0                                      add r0, pc, r0
00835ed0  2b d6 ff eb                                      bl #0x82b784
00835ed4  05 00 a0 e1                                      mov r0, r5
00835ed8  06 10 a0 e1                                      mov r1, r6
00835edc  00 30 95 e5                                      ldr r3, [r5]
00835ee0  0f e0 a0 e1                                      mov lr, pc
00835ee4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835ee8  da ff ff ea                                      b #0x835e58
00835eec  c8 c0 9f e5                                      ldr ip, [pc, #0xc8]
00835ef0  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00835ef4  08 30 95 e5                                      ldr r3, [r5, #8]
00835ef8  0c e0 95 e5                                      ldr lr, [r5, #0xc]
00835efc  01 10 8f e0                                      add r1, pc, r1
00835f00  0c c0 8f e0                                      add ip, pc, ip
00835f04  e6 ff ff ea                                      b #0x835ea4
00835f08  0c 00 a0 e1                                      mov r0, ip
00835f0c  26 d4 ff eb                                      bl #0x82afac
00835f10  00 00 50 e3                                      cmp r0, #0
00835f14  c7 ff ff 0a                                      beq #0x835e38
00835f18  00 00 5a e3                                      cmp sl, #0
00835f1c  0b 00 00 0a                                      beq #0x835f50
00835f20  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00835f24  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00835f28  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00835f2c  08 30 95 e5                                      ldr r3, [r5, #8]
00835f30  01 10 8f e0                                      add r1, pc, r1
00835f34  06 00 a0 e1                                      mov r0, r6
00835f38  4d 20 a0 e3                                      mov r2, #0x4d
00835f3c  00 c0 8d e5                                      str ip, [sp]
00835f40  80 48 8d e9                                      stmib sp, {r7, fp, lr}
00835f44  10 90 8d e5                                      str sb, [sp, #0x10]
00835f48  e5 62 eb eb                                      bl #0x30eae4
00835f4c  dc ff ff ea                                      b #0x835ec4
00835f50  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00835f54  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00835f58  08 30 95 e5                                      ldr r3, [r5, #8]
00835f5c  00 c0 8d e5                                      str ip, [sp]
00835f60  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00835f64  01 10 8f e0                                      add r1, pc, r1
00835f68  06 00 a0 e1                                      mov r0, r6
00835f6c  4d 20 a0 e3                                      mov r2, #0x4d
00835f70  80 18 8d e9                                      stmib sp, {r7, fp, ip}
00835f74  10 90 8d e5                                      str sb, [sp, #0x10]
00835f78  d9 62 eb eb                                      bl #0x30eae4
00835f7c  d0 ff ff ea                                      b #0x835ec4
00835f80  04 30 95 e5                                      ldr r3, [r5, #4]
00835f84  4d 10 a0 e3                                      mov r1, #0x4d
00835f88  63 20 e0 e3                                      mvn r2, #0x63
00835f8c  03 00 a0 e1                                      mov r0, r3
00835f90  00 30 93 e5                                      ldr r3, [r3]
00835f94  0f e0 a0 e1                                      mov lr, pc
00835f98  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00835f9c  09 00 a0 e1                                      mov r0, sb
00835fa0  ac ff ff ea                                      b #0x835e58
00835fa4  d9 60 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00835fa8  c8 ec 15 00 ac 40 00 00 68 59 09 00 84 76 0d 00  .byte 0xc8, 0xec, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x59, 0x09, 0x00, 0x84, 0x76, 0x0d, 0x00
00835fb8  7c 76 0d 00 08 59 09 00 fc 75 0d 00 c8 75 0d 00  .byte 0x7c, 0x76, 0x0d, 0x00, 0x08, 0x59, 0x09, 0x00, 0xfc, 0x75, 0x0d, 0x00, 0xc8, 0x75, 0x0d, 0x00
00835fc8  bc 75 0d 00                                      .byte 0xbc, 0x75, 0x0d, 0x00

; FUNCTION 0x00835fcc, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage21SendReadMySentMessageEi
; demangled: GLXPlayerMessage::SendReadMySentMessage(int)
; decoder-mode: arm
00835fcc  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00835fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00835fd4  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00835fd8  03 30 8f e0                                      add r3, pc, r3
00835fdc  01 da 4d e2                                      sub sp, sp, #0x1000
00835fe0  02 60 93 e7                                      ldr r6, [r3, r2]
00835fe4  10 d0 4d e2                                      sub sp, sp, #0x10
00835fe8  01 2a a0 e3                                      mov r2, #0x1000
00835fec  00 c0 96 e5                                      ldr ip, [r6]
00835ff0  10 50 8d e2                                      add r5, sp, #0x10
00835ff4  04 50 45 e2                                      sub r5, r5, #4
00835ff8  02 e0 8d e0                                      add lr, sp, r2
00835ffc  00 40 a0 e1                                      mov r4, r0
00836000  64 10 80 e5                                      str r1, [r0, #0x64]
00836004  0c c0 8e e5                                      str ip, [lr, #0xc]
00836008  05 00 a0 e1                                      mov r0, r5
0083600c  00 10 a0 e3                                      mov r1, #0
00836010  d3 d4 ff eb                                      bl #0x82b364
00836014  70 10 9f e5                                      ldr r1, [pc, #0x70]
00836018  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0083601c  64 c0 94 e5                                      ldr ip, [r4, #0x64]
00836020  08 30 94 e5                                      ldr r3, [r4, #8]
00836024  5d 20 a0 e3                                      mov r2, #0x5d
00836028  01 10 8f e0                                      add r1, pc, r1
0083602c  05 00 a0 e1                                      mov r0, r5
00836030  00 e0 8d e5                                      str lr, [sp]
00836034  04 c0 8d e5                                      str ip, [sp, #4]
00836038  a9 62 eb eb                                      bl #0x30eae4
0083603c  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00836040  05 10 a0 e1                                      mov r1, r5
00836044  00 00 8f e0                                      add r0, pc, r0
00836048  cd d5 ff eb                                      bl #0x82b784
0083604c  00 30 94 e5                                      ldr r3, [r4]
00836050  04 00 a0 e1                                      mov r0, r4
00836054  05 10 a0 e1                                      mov r1, r5
00836058  0f e0 a0 e1                                      mov lr, pc
0083605c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00836060  01 3a 8d e2                                      add r3, sp, #0x1000
00836064  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00836068  00 30 96 e5                                      ldr r3, [r6]
0083606c  03 00 52 e1                                      cmp r2, r3
00836070  02 00 00 1a                                      bne #0x836080
00836074  10 d0 8d e2                                      add sp, sp, #0x10
00836078  01 da 8d e2                                      add sp, sp, #0x1000
0083607c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00836080  a2 60 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00836084  b8 ea 15 00 ac 40 00 00 80 74 0d 00 1c 75 0d 00  .byte 0xb8, 0xea, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0x74, 0x0d, 0x00, 0x1c, 0x75, 0x0d, 0x00

; FUNCTION 0x00836094, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15SendReadMessageEi
; demangled: GLXPlayerMessage::SendReadMessage(int)
; decoder-mode: arm
00836094  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00836098  70 40 2d e9                                      push {r4, r5, r6, lr}
0083609c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
008360a0  03 30 8f e0                                      add r3, pc, r3
008360a4  01 da 4d e2                                      sub sp, sp, #0x1000
008360a8  02 60 93 e7                                      ldr r6, [r3, r2]
008360ac  10 d0 4d e2                                      sub sp, sp, #0x10
008360b0  01 2a a0 e3                                      mov r2, #0x1000
008360b4  00 c0 96 e5                                      ldr ip, [r6]
008360b8  10 50 8d e2                                      add r5, sp, #0x10
008360bc  04 50 45 e2                                      sub r5, r5, #4
008360c0  02 e0 8d e0                                      add lr, sp, r2
008360c4  00 40 a0 e1                                      mov r4, r0
008360c8  64 10 80 e5                                      str r1, [r0, #0x64]
008360cc  0c c0 8e e5                                      str ip, [lr, #0xc]
008360d0  05 00 a0 e1                                      mov r0, r5
008360d4  00 10 a0 e3                                      mov r1, #0
008360d8  a1 d4 ff eb                                      bl #0x82b364
008360dc  70 10 9f e5                                      ldr r1, [pc, #0x70]
008360e0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
008360e4  64 c0 94 e5                                      ldr ip, [r4, #0x64]
008360e8  08 30 94 e5                                      ldr r3, [r4, #8]
008360ec  4c 20 a0 e3                                      mov r2, #0x4c
008360f0  01 10 8f e0                                      add r1, pc, r1
008360f4  05 00 a0 e1                                      mov r0, r5
008360f8  00 e0 8d e5                                      str lr, [sp]
008360fc  04 c0 8d e5                                      str ip, [sp, #4]
00836100  77 62 eb eb                                      bl #0x30eae4
00836104  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00836108  05 10 a0 e1                                      mov r1, r5
0083610c  00 00 8f e0                                      add r0, pc, r0
00836110  9b d5 ff eb                                      bl #0x82b784
00836114  00 30 94 e5                                      ldr r3, [r4]
00836118  04 00 a0 e1                                      mov r0, r4
0083611c  05 10 a0 e1                                      mov r1, r5
00836120  0f e0 a0 e1                                      mov lr, pc
00836124  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00836128  01 3a 8d e2                                      add r3, sp, #0x1000
0083612c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00836130  00 30 96 e5                                      ldr r3, [r6]
00836134  03 00 52 e1                                      cmp r2, r3
00836138  02 00 00 1a                                      bne #0x836148
0083613c  10 d0 8d e2                                      add sp, sp, #0x10
00836140  01 da 8d e2                                      add sp, sp, #0x1000
00836144  70 80 bd e8                                      pop {r4, r5, r6, pc}
00836148  70 60 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083614c  f0 e9 15 00 ac 40 00 00 b8 73 0d 00 74 74 0d 00  .byte 0xf0, 0xe9, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x73, 0x0d, 0x00, 0x74, 0x74, 0x0d, 0x00

; FUNCTION 0x0083615c, declared_size=792, range_size=792, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage20SendGetMessageHeaderEiiii
; demangled: GLXPlayerMessage::SendGetMessageHeader(int, int, int, int)
; decoder-mode: arm
0083615c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836160  e0 62 9f e5                                      ldr r6, [pc, #0x2e0]
00836164  e0 92 9f e5                                      ldr sb, [pc, #0x2e0]
00836168  41 dd 4d e2                                      sub sp, sp, #0x1040
0083616c  06 60 8f e0                                      add r6, pc, r6
00836170  09 c0 96 e7                                      ldr ip, [r6, sb]
00836174  2c d0 4d e2                                      sub sp, sp, #0x2c
00836178  1c 20 8d e5                                      str r2, [sp, #0x1c]
0083617c  00 c0 9c e5                                      ldr ip, [ip]
00836180  01 2a a0 e3                                      mov r2, #0x1000
00836184  28 80 8d e2                                      add r8, sp, #0x28
00836188  02 e0 8d e0                                      add lr, sp, r2
0083618c  04 80 48 e2                                      sub r8, r8, #4
00836190  01 4a 8d e2                                      add r4, sp, #0x1000
00836194  01 50 a0 e1                                      mov r5, r1
00836198  64 c0 8e e5                                      str ip, [lr, #0x64]
0083619c  00 10 a0 e3                                      mov r1, #0
008361a0  00 70 a0 e1                                      mov r7, r0
008361a4  24 40 84 e2                                      add r4, r4, #0x24
008361a8  08 00 a0 e1                                      mov r0, r8
008361ac  03 b0 a0 e1                                      mov fp, r3
008361b0  6b d4 ff eb                                      bl #0x82b364
008361b4  04 00 a0 e1                                      mov r0, r4
008361b8  00 10 a0 e3                                      mov r1, #0
008361bc  40 20 a0 e3                                      mov r2, #0x40
008361c0  67 d4 ff eb                                      bl #0x82b364
008361c4  01 00 75 e3                                      cmn r5, #1
008361c8  8e 00 00 0a                                      beq #0x836408
008361cc  01 a0 15 e2                                      ands sl, r5, #1
008361d0  35 00 00 1a                                      bne #0x8362ac
008361d4  02 00 15 e3                                      tst r5, #2
008361d8  40 00 00 1a                                      bne #0x8362e0
008361dc  04 00 15 e3                                      tst r5, #4
008361e0  4e 00 00 1a                                      bne #0x836320
008361e4  08 00 15 e3                                      tst r5, #8
008361e8  5c 00 00 1a                                      bne #0x836360
008361ec  10 00 15 e3                                      tst r5, #0x10
008361f0  6a 00 00 1a                                      bne #0x8363a0
008361f4  20 00 15 e3                                      tst r5, #0x20
008361f8  78 00 00 1a                                      bne #0x8363e0
008361fc  04 00 a0 e1                                      mov r0, r4
00836200  69 d3 ff eb                                      bl #0x82afac
00836204  00 00 50 e3                                      cmp r0, #0
00836208  06 00 00 da                                      ble #0x836228
0083620c  04 00 a0 e1                                      mov r0, r4
00836210  65 d3 ff eb                                      bl #0x82afac
00836214  41 1d 8d e2                                      add r1, sp, #0x1040
00836218  28 10 81 e2                                      add r1, r1, #0x28
0083621c  00 00 81 e0                                      add r0, r1, r0
00836220  00 30 a0 e3                                      mov r3, #0
00836224  45 30 40 e5                                      strb r3, [r0, #-0x45]
00836228  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083622c  08 30 97 e5                                      ldr r3, [r7, #8]
00836230  18 12 9f e5                                      ldr r1, [pc, #0x218]
00836234  00 c0 8d e5                                      str ip, [sp]
00836238  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0083623c  04 40 8d e5                                      str r4, [sp, #4]
00836240  0c b0 8d e5                                      str fp, [sp, #0xc]
00836244  08 c0 8d e5                                      str ip, [sp, #8]
00836248  01 ea 8d e2                                      add lr, sp, #0x1000
0083624c  90 e0 9e e5                                      ldr lr, [lr, #0x90]
00836250  01 10 8f e0                                      add r1, pc, r1
00836254  08 00 a0 e1                                      mov r0, r8
00836258  4b 20 a0 e3                                      mov r2, #0x4b
0083625c  10 e0 8d e5                                      str lr, [sp, #0x10]
00836260  1f 62 eb eb                                      bl #0x30eae4
00836264  e8 01 9f e5                                      ldr r0, [pc, #0x1e8]
00836268  08 10 a0 e1                                      mov r1, r8
0083626c  00 00 8f e0                                      add r0, pc, r0
00836270  43 d5 ff eb                                      bl #0x82b784
00836274  08 10 a0 e1                                      mov r1, r8
00836278  00 30 97 e5                                      ldr r3, [r7]
0083627c  07 00 a0 e1                                      mov r0, r7
00836280  0f e0 a0 e1                                      mov lr, pc
00836284  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00836288  09 30 96 e7                                      ldr r3, [r6, sb]
0083628c  01 1a 8d e2                                      add r1, sp, #0x1000
00836290  64 20 91 e5                                      ldr r2, [r1, #0x64]
00836294  00 30 93 e5                                      ldr r3, [r3]
00836298  03 00 52 e1                                      cmp r2, r3
0083629c  68 00 00 1a                                      bne #0x836444
008362a0  6c d0 8d e2                                      add sp, sp, #0x6c
008362a4  01 da 8d e2                                      add sp, sp, #0x1000
008362a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008362ac  04 00 a0 e1                                      mov r0, r4
008362b0  3d d3 ff eb                                      bl #0x82afac
008362b4  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
008362b8  00 a0 a0 e1                                      mov sl, r0
008362bc  01 20 a0 e3                                      mov r2, #1
008362c0  01 10 8f e0                                      add r1, pc, r1
008362c4  04 00 a0 e1                                      mov r0, r4
008362c8  05 62 eb eb                                      bl #0x30eae4
008362cc  04 00 a0 e1                                      mov r0, r4
008362d0  35 d3 ff eb                                      bl #0x82afac
008362d4  02 00 15 e3                                      tst r5, #2
008362d8  00 a0 6a e0                                      rsb sl, sl, r0
008362dc  be ff ff 0a                                      beq #0x8361dc
008362e0  04 00 a0 e1                                      mov r0, r4
008362e4  30 d3 ff eb                                      bl #0x82afac
008362e8  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
008362ec  00 30 a0 e1                                      mov r3, r0
008362f0  02 20 a0 e3                                      mov r2, #2
008362f4  0a 00 84 e0                                      add r0, r4, sl
008362f8  01 10 8f e0                                      add r1, pc, r1
008362fc  18 30 8d e5                                      str r3, [sp, #0x18]
00836300  f7 61 eb eb                                      bl #0x30eae4
00836304  04 00 a0 e1                                      mov r0, r4
00836308  27 d3 ff eb                                      bl #0x82afac
0083630c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00836310  0a a0 80 e0                                      add sl, r0, sl
00836314  04 00 15 e3                                      tst r5, #4
00836318  0a a0 63 e0                                      rsb sl, r3, sl
0083631c  b0 ff ff 0a                                      beq #0x8361e4
00836320  04 00 a0 e1                                      mov r0, r4
00836324  20 d3 ff eb                                      bl #0x82afac
00836328  30 11 9f e5                                      ldr r1, [pc, #0x130]
0083632c  00 30 a0 e1                                      mov r3, r0
00836330  04 20 a0 e3                                      mov r2, #4
00836334  0a 00 84 e0                                      add r0, r4, sl
00836338  01 10 8f e0                                      add r1, pc, r1
0083633c  18 30 8d e5                                      str r3, [sp, #0x18]
00836340  e7 61 eb eb                                      bl #0x30eae4
00836344  04 00 a0 e1                                      mov r0, r4
00836348  17 d3 ff eb                                      bl #0x82afac
0083634c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00836350  0a a0 80 e0                                      add sl, r0, sl
00836354  08 00 15 e3                                      tst r5, #8
00836358  0a a0 63 e0                                      rsb sl, r3, sl
0083635c  a2 ff ff 0a                                      beq #0x8361ec
00836360  04 00 a0 e1                                      mov r0, r4
00836364  10 d3 ff eb                                      bl #0x82afac
00836368  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0083636c  00 30 a0 e1                                      mov r3, r0
00836370  08 20 a0 e3                                      mov r2, #8
00836374  0a 00 84 e0                                      add r0, r4, sl
00836378  01 10 8f e0                                      add r1, pc, r1
0083637c  18 30 8d e5                                      str r3, [sp, #0x18]
00836380  d7 61 eb eb                                      bl #0x30eae4
00836384  04 00 a0 e1                                      mov r0, r4
00836388  07 d3 ff eb                                      bl #0x82afac
0083638c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00836390  0a a0 80 e0                                      add sl, r0, sl
00836394  10 00 15 e3                                      tst r5, #0x10
00836398  0a a0 63 e0                                      rsb sl, r3, sl
0083639c  94 ff ff 0a                                      beq #0x8361f4
008363a0  04 00 a0 e1                                      mov r0, r4
008363a4  00 d3 ff eb                                      bl #0x82afac
008363a8  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
008363ac  00 30 a0 e1                                      mov r3, r0
008363b0  10 20 a0 e3                                      mov r2, #0x10
008363b4  0a 00 84 e0                                      add r0, r4, sl
008363b8  01 10 8f e0                                      add r1, pc, r1
008363bc  18 30 8d e5                                      str r3, [sp, #0x18]
008363c0  c7 61 eb eb                                      bl #0x30eae4
008363c4  04 00 a0 e1                                      mov r0, r4
008363c8  f7 d2 ff eb                                      bl #0x82afac
008363cc  18 30 9d e5                                      ldr r3, [sp, #0x18]
008363d0  0a a0 80 e0                                      add sl, r0, sl
008363d4  20 00 15 e3                                      tst r5, #0x20
008363d8  0a a0 63 e0                                      rsb sl, r3, sl
008363dc  86 ff ff 0a                                      beq #0x8361fc
008363e0  04 00 a0 e1                                      mov r0, r4
008363e4  f0 d2 ff eb                                      bl #0x82afac
008363e8  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
008363ec  0a 00 84 e0                                      add r0, r4, sl
008363f0  20 20 a0 e3                                      mov r2, #0x20
008363f4  01 10 8f e0                                      add r1, pc, r1
008363f8  b9 61 eb eb                                      bl #0x30eae4
008363fc  04 00 a0 e1                                      mov r0, r4
00836400  e9 d2 ff eb                                      bl #0x82afac
00836404  7c ff ff ea                                      b #0x8361fc
00836408  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083640c  08 30 97 e5                                      ldr r3, [r7, #8]
00836410  01 ea 8d e2                                      add lr, sp, #0x1000
00836414  00 c0 8d e5                                      str ip, [sp]
00836418  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0083641c  08 b0 8d e5                                      str fp, [sp, #8]
00836420  48 10 9f e5                                      ldr r1, [pc, #0x48]
00836424  04 c0 8d e5                                      str ip, [sp, #4]
00836428  90 e0 9e e5                                      ldr lr, [lr, #0x90]
0083642c  01 10 8f e0                                      add r1, pc, r1
00836430  08 00 a0 e1                                      mov r0, r8
00836434  4b 20 a0 e3                                      mov r2, #0x4b
00836438  0c e0 8d e5                                      str lr, [sp, #0xc]
0083643c  a8 61 eb eb                                      bl #0x30eae4
00836440  87 ff ff ea                                      b #0x836264
00836444  b1 5f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00836448  24 e9 15 00 ac 40 00 00 50 73 0d 00 e4 71 0d 00  .byte 0x24, 0xe9, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x50, 0x73, 0x0d, 0x00, 0xe4, 0x71, 0x0d, 0x00
00836458  d8 72 0d 00 a0 72 0d 00 60 72 0d 00 20 72 0d 00  .byte 0xd8, 0x72, 0x0d, 0x00, 0xa0, 0x72, 0x0d, 0x00, 0x60, 0x72, 0x0d, 0x00, 0x20, 0x72, 0x0d, 0x00
00836468  e0 71 0d 00 a4 71 0d 00 9c 71 0d 00              .byte 0xe0, 0x71, 0x0d, 0x00, 0xa4, 0x71, 0x0d, 0x00, 0x9c, 0x71, 0x0d, 0x00

; FUNCTION 0x00836474, declared_size=664, range_size=664, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage19SendGetMessageCountEii
; demangled: GLXPlayerMessage::SendGetMessageCount(int, int)
; decoder-mode: arm
00836474  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836478  64 52 9f e5                                      ldr r5, [pc, #0x264]
0083647c  64 92 9f e5                                      ldr sb, [pc, #0x264]
00836480  41 dd 4d e2                                      sub sp, sp, #0x1040
00836484  05 50 8f e0                                      add r5, pc, r5
00836488  09 30 95 e7                                      ldr r3, [r5, sb]
0083648c  24 d0 4d e2                                      sub sp, sp, #0x24
00836490  20 60 8d e2                                      add r6, sp, #0x20
00836494  00 30 93 e5                                      ldr r3, [r3]
00836498  02 b0 a0 e1                                      mov fp, r2
0083649c  01 2a a0 e3                                      mov r2, #0x1000
008364a0  02 c0 8d e0                                      add ip, sp, r2
008364a4  04 60 46 e2                                      sub r6, r6, #4
008364a8  01 4a 8d e2                                      add r4, sp, #0x1000
008364ac  01 80 a0 e1                                      mov r8, r1
008364b0  5c 30 8c e5                                      str r3, [ip, #0x5c]
008364b4  00 10 a0 e3                                      mov r1, #0
008364b8  00 70 a0 e1                                      mov r7, r0
008364bc  1c 40 84 e2                                      add r4, r4, #0x1c
008364c0  06 00 a0 e1                                      mov r0, r6
008364c4  a6 d3 ff eb                                      bl #0x82b364
008364c8  04 00 a0 e1                                      mov r0, r4
008364cc  00 10 a0 e3                                      mov r1, #0
008364d0  40 20 a0 e3                                      mov r2, #0x40
008364d4  a2 d3 ff eb                                      bl #0x82b364
008364d8  01 00 78 e3                                      cmn r8, #1
008364dc  76 00 00 0a                                      beq #0x8366bc
008364e0  01 a0 18 e2                                      ands sl, r8, #1
008364e4  2d 00 00 1a                                      bne #0x8365a0
008364e8  02 00 18 e3                                      tst r8, #2
008364ec  38 00 00 1a                                      bne #0x8365d4
008364f0  04 00 18 e3                                      tst r8, #4
008364f4  46 00 00 1a                                      bne #0x836614
008364f8  08 00 18 e3                                      tst r8, #8
008364fc  54 00 00 1a                                      bne #0x836654
00836500  10 00 18 e3                                      tst r8, #0x10
00836504  62 00 00 1a                                      bne #0x836694
00836508  04 00 a0 e1                                      mov r0, r4
0083650c  a6 d2 ff eb                                      bl #0x82afac
00836510  00 00 50 e3                                      cmp r0, #0
00836514  06 00 00 da                                      ble #0x836534
00836518  04 00 a0 e1                                      mov r0, r4
0083651c  a2 d2 ff eb                                      bl #0x82afac
00836520  41 1d 8d e2                                      add r1, sp, #0x1040
00836524  20 10 81 e2                                      add r1, r1, #0x20
00836528  00 00 81 e0                                      add r0, r1, r0
0083652c  00 30 a0 e3                                      mov r3, #0
00836530  45 30 40 e5                                      strb r3, [r0, #-0x45]
00836534  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
00836538  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083653c  08 30 97 e5                                      ldr r3, [r7, #8]
00836540  01 10 8f e0                                      add r1, pc, r1
00836544  06 00 a0 e1                                      mov r0, r6
00836548  4a 20 a0 e3                                      mov r2, #0x4a
0083654c  00 c0 8d e5                                      str ip, [sp]
00836550  10 08 8d e9                                      stmib sp, {r4, fp}
00836554  62 61 eb eb                                      bl #0x30eae4
00836558  90 01 9f e5                                      ldr r0, [pc, #0x190]
0083655c  06 10 a0 e1                                      mov r1, r6
00836560  00 00 8f e0                                      add r0, pc, r0
00836564  86 d4 ff eb                                      bl #0x82b784
00836568  00 30 97 e5                                      ldr r3, [r7]
0083656c  07 00 a0 e1                                      mov r0, r7
00836570  06 10 a0 e1                                      mov r1, r6
00836574  0f e0 a0 e1                                      mov lr, pc
00836578  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083657c  09 30 95 e7                                      ldr r3, [r5, sb]
00836580  01 ca 8d e2                                      add ip, sp, #0x1000
00836584  5c 20 9c e5                                      ldr r2, [ip, #0x5c]
00836588  00 30 93 e5                                      ldr r3, [r3]
0083658c  03 00 52 e1                                      cmp r2, r3
00836590  52 00 00 1a                                      bne #0x8366e0
00836594  64 d0 8d e2                                      add sp, sp, #0x64
00836598  01 da 8d e2                                      add sp, sp, #0x1000
0083659c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008365a0  04 00 a0 e1                                      mov r0, r4
008365a4  80 d2 ff eb                                      bl #0x82afac
008365a8  44 11 9f e5                                      ldr r1, [pc, #0x144]
008365ac  00 a0 a0 e1                                      mov sl, r0
008365b0  01 20 a0 e3                                      mov r2, #1
008365b4  01 10 8f e0                                      add r1, pc, r1
008365b8  04 00 a0 e1                                      mov r0, r4
008365bc  48 61 eb eb                                      bl #0x30eae4
008365c0  04 00 a0 e1                                      mov r0, r4
008365c4  78 d2 ff eb                                      bl #0x82afac
008365c8  02 00 18 e3                                      tst r8, #2
008365cc  00 a0 6a e0                                      rsb sl, sl, r0
008365d0  c6 ff ff 0a                                      beq #0x8364f0
008365d4  04 00 a0 e1                                      mov r0, r4
008365d8  73 d2 ff eb                                      bl #0x82afac
008365dc  14 11 9f e5                                      ldr r1, [pc, #0x114]
008365e0  00 30 a0 e1                                      mov r3, r0
008365e4  02 20 a0 e3                                      mov r2, #2
008365e8  0a 00 84 e0                                      add r0, r4, sl
008365ec  01 10 8f e0                                      add r1, pc, r1
008365f0  14 30 8d e5                                      str r3, [sp, #0x14]
008365f4  3a 61 eb eb                                      bl #0x30eae4
008365f8  04 00 a0 e1                                      mov r0, r4
008365fc  6a d2 ff eb                                      bl #0x82afac
00836600  14 30 9d e5                                      ldr r3, [sp, #0x14]
00836604  0a a0 80 e0                                      add sl, r0, sl
00836608  04 00 18 e3                                      tst r8, #4
0083660c  0a a0 63 e0                                      rsb sl, r3, sl
00836610  b8 ff ff 0a                                      beq #0x8364f8
00836614  04 00 a0 e1                                      mov r0, r4
00836618  63 d2 ff eb                                      bl #0x82afac
0083661c  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
00836620  00 30 a0 e1                                      mov r3, r0
00836624  04 20 a0 e3                                      mov r2, #4
00836628  0a 00 84 e0                                      add r0, r4, sl
0083662c  01 10 8f e0                                      add r1, pc, r1
00836630  14 30 8d e5                                      str r3, [sp, #0x14]
00836634  2a 61 eb eb                                      bl #0x30eae4
00836638  04 00 a0 e1                                      mov r0, r4
0083663c  5a d2 ff eb                                      bl #0x82afac
00836640  14 30 9d e5                                      ldr r3, [sp, #0x14]
00836644  0a a0 80 e0                                      add sl, r0, sl
00836648  08 00 18 e3                                      tst r8, #8
0083664c  0a a0 63 e0                                      rsb sl, r3, sl
00836650  aa ff ff 0a                                      beq #0x836500
00836654  04 00 a0 e1                                      mov r0, r4
00836658  53 d2 ff eb                                      bl #0x82afac
0083665c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00836660  00 30 a0 e1                                      mov r3, r0
00836664  08 20 a0 e3                                      mov r2, #8
00836668  0a 00 84 e0                                      add r0, r4, sl
0083666c  01 10 8f e0                                      add r1, pc, r1
00836670  14 30 8d e5                                      str r3, [sp, #0x14]
00836674  1a 61 eb eb                                      bl #0x30eae4
00836678  04 00 a0 e1                                      mov r0, r4
0083667c  4a d2 ff eb                                      bl #0x82afac
00836680  14 30 9d e5                                      ldr r3, [sp, #0x14]
00836684  0a a0 80 e0                                      add sl, r0, sl
00836688  10 00 18 e3                                      tst r8, #0x10
0083668c  0a a0 63 e0                                      rsb sl, r3, sl
00836690  9c ff ff 0a                                      beq #0x836508
00836694  04 00 a0 e1                                      mov r0, r4
00836698  43 d2 ff eb                                      bl #0x82afac
0083669c  60 10 9f e5                                      ldr r1, [pc, #0x60]
008366a0  0a 00 84 e0                                      add r0, r4, sl
008366a4  10 20 a0 e3                                      mov r2, #0x10
008366a8  01 10 8f e0                                      add r1, pc, r1
008366ac  0c 61 eb eb                                      bl #0x30eae4
008366b0  04 00 a0 e1                                      mov r0, r4
008366b4  3c d2 ff eb                                      bl #0x82afac
008366b8  92 ff ff ea                                      b #0x836508
008366bc  44 10 9f e5                                      ldr r1, [pc, #0x44]
008366c0  0c c0 97 e5                                      ldr ip, [r7, #0xc]
008366c4  08 30 97 e5                                      ldr r3, [r7, #8]
008366c8  01 10 8f e0                                      add r1, pc, r1
008366cc  06 00 a0 e1                                      mov r0, r6
008366d0  4a 20 a0 e3                                      mov r2, #0x4a
008366d4  00 c0 8d e5                                      str ip, [sp]
008366d8  01 61 eb eb                                      bl #0x30eae4
008366dc  9d ff ff ea                                      b #0x836558
008366e0  0a 5f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008366e4  0c e6 15 00 ac 40 00 00 a8 70 0d 00 a8 70 0d 00  .byte 0x0c, 0xe6, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x70, 0x0d, 0x00, 0xa8, 0x70, 0x0d, 0x00
008366f4  e4 6f 0d 00 ac 6f 0d 00 6c 6f 0d 00 2c 6f 0d 00  .byte 0xe4, 0x6f, 0x0d, 0x00, 0xac, 0x6f, 0x0d, 0x00, 0x6c, 0x6f, 0x0d, 0x00, 0x2c, 0x6f, 0x0d, 0x00
00836704  f0 6e 0d 00 a8 5d 0d 00                          .byte 0xf0, 0x6e, 0x0d, 0x00, 0xa8, 0x5d, 0x0d, 0x00

; FUNCTION 0x0083670c, declared_size=272, range_size=272, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessage15OnUpdateSuccessEi
; demangled: GLXPlayerMessage::OnUpdateSuccess(int)
; decoder-mode: arm
0083670c  4a 30 41 e2                                      sub r3, r1, #0x4a
00836710  70 40 2d e9                                      push {r4, r5, r6, lr}
00836714  01 50 a0 e1                                      mov r5, r1
00836718  00 40 a0 e1                                      mov r4, r0
0083671c  13 00 53 e3                                      cmp r3, #0x13
00836720  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00836724  1c 00 00 ea                                      b #0x83679c
00836728  22 00 00 ea                                      b #0x8367b8
0083672c  24 00 00 ea                                      b #0x8367c4
00836730  10 00 00 ea                                      b #0x836778
00836734  18 00 00 ea                                      b #0x83679c
00836738  17 00 00 ea                                      b #0x83679c
0083673c  16 00 00 ea                                      b #0x83679c
00836740  15 00 00 ea                                      b #0x83679c
00836744  14 00 00 ea                                      b #0x83679c
00836748  13 00 00 ea                                      b #0x83679c
0083674c  12 00 00 ea                                      b #0x83679c
00836750  11 00 00 ea                                      b #0x83679c
00836754  10 00 00 ea                                      b #0x83679c
00836758  0f 00 00 ea                                      b #0x83679c
0083675c  0e 00 00 ea                                      b #0x83679c
00836760  0d 00 00 ea                                      b #0x83679c
00836764  0c 00 00 ea                                      b #0x83679c
00836768  0b 00 00 ea                                      b #0x83679c
0083676c  17 00 00 ea                                      b #0x8367d0
00836770  0d 00 00 ea                                      b #0x8367ac
00836774  ff ff ff ea                                      b #0x836778
00836778  68 00 90 e5                                      ldr r0, [r0, #0x68]
0083677c  00 00 50 e3                                      cmp r0, #0
00836780  02 00 00 0a                                      beq #0x836790
00836784  c9 5e eb eb                                      bl #0x30e2b0
00836788  00 30 a0 e3                                      mov r3, #0
0083678c  68 30 84 e5                                      str r3, [r4, #0x68]
00836790  24 00 94 e5                                      ldr r0, [r4, #0x24]
00836794  81 d4 ff eb                                      bl #0x82b9a0
00836798  68 00 84 e5                                      str r0, [r4, #0x68]
0083679c  04 00 a0 e1                                      mov r0, r4
008367a0  05 10 a0 e1                                      mov r1, r5
008367a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008367a8  76 eb ff ea                                      b #0x831588
008367ac  24 10 94 e5                                      ldr r1, [r4, #0x24]
008367b0  32 fb ff eb                                      bl #0x835480
008367b4  f8 ff ff ea                                      b #0x83679c
008367b8  24 10 94 e5                                      ldr r1, [r4, #0x24]
008367bc  0e fa ff eb                                      bl #0x834ffc
008367c0  f5 ff ff ea                                      b #0x83679c
008367c4  24 10 94 e5                                      ldr r1, [r4, #0x24]
008367c8  dd fb ff eb                                      bl #0x835744
008367cc  f2 ff ff ea                                      b #0x83679c
008367d0  10 00 a0 e3                                      mov r0, #0x10
008367d4  3d 5e eb eb                                      bl #0x30e0d0
008367d8  00 10 a0 e3                                      mov r1, #0
008367dc  00 60 a0 e1                                      mov r6, r0
008367e0  10 20 a0 e3                                      mov r2, #0x10
008367e4  de d2 ff eb                                      bl #0x82b364
008367e8  06 10 a0 e1                                      mov r1, r6
008367ec  00 20 a0 e3                                      mov r2, #0
008367f0  7c 30 a0 e3                                      mov r3, #0x7c
008367f4  24 00 94 e5                                      ldr r0, [r4, #0x24]
008367f8  38 d1 ff eb                                      bl #0x82ace0
008367fc  06 00 a0 e1                                      mov r0, r6
00836800  c6 d2 ff eb                                      bl #0x82b320
00836804  00 00 56 e3                                      cmp r6, #0
00836808  b4 00 84 e5                                      str r0, [r4, #0xb4]
0083680c  e2 ff ff 0a                                      beq #0x83679c
00836810  06 00 a0 e1                                      mov r0, r6
00836814  a5 5e eb eb                                      bl #0x30e2b0
00836818  df ff ff ea                                      b #0x83679c

; FUNCTION 0x0083681c, declared_size=84, range_size=84, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessageD1Ev
; demangled: GLXPlayerMessage::~GLXPlayerMessage()
; decoder-mode: arm
0083681c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00836820  44 20 9f e5                                      ldr r2, [pc, #0x44]
00836824  10 40 2d e9                                      push {r4, lr}
00836828  03 30 8f e0                                      add r3, pc, r3
0083682c  02 20 93 e7                                      ldr r2, [r3, r2]
00836830  00 40 a0 e1                                      mov r4, r0
00836834  08 20 82 e2                                      add r2, r2, #8
00836838  00 20 80 e5                                      str r2, [r0]
0083683c  62 fa ff eb                                      bl #0x8351cc
00836840  68 00 94 e5                                      ldr r0, [r4, #0x68]
00836844  00 00 50 e3                                      cmp r0, #0
00836848  02 00 00 0a                                      beq #0x836858
0083684c  97 5e eb eb                                      bl #0x30e2b0
00836850  00 30 a0 e3                                      mov r3, #0
00836854  68 30 84 e5                                      str r3, [r4, #0x68]
00836858  04 00 a0 e1                                      mov r0, r4
0083685c  e7 ed ff eb                                      bl #0x832000
00836860  04 00 a0 e1                                      mov r0, r4
00836864  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00836868  68 e2 15 00 78 39 00 00                          .byte 0x68, 0xe2, 0x15, 0x00, 0x78, 0x39, 0x00, 0x00

; FUNCTION 0x00836870, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessageD0Ev
; demangled: GLXPlayerMessage::~GLXPlayerMessage()
; decoder-mode: arm
00836870  10 40 2d e9                                      push {r4, lr}
00836874  00 40 a0 e1                                      mov r4, r0
00836878  e7 ff ff eb                                      bl #0x83681c
0083687c  04 00 a0 e1                                      mov r0, r4
00836880  8a 5e eb eb                                      bl #0x30e2b0
00836884  04 00 a0 e1                                      mov r0, r4
00836888  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083688c, declared_size=84, range_size=84, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessageD2Ev
; demangled: GLXPlayerMessage::~GLXPlayerMessage()
; decoder-mode: arm
0083688c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00836890  44 20 9f e5                                      ldr r2, [pc, #0x44]
00836894  10 40 2d e9                                      push {r4, lr}
00836898  03 30 8f e0                                      add r3, pc, r3
0083689c  02 20 93 e7                                      ldr r2, [r3, r2]
008368a0  00 40 a0 e1                                      mov r4, r0
008368a4  08 20 82 e2                                      add r2, r2, #8
008368a8  00 20 80 e5                                      str r2, [r0]
008368ac  46 fa ff eb                                      bl #0x8351cc
008368b0  68 00 94 e5                                      ldr r0, [r4, #0x68]
008368b4  00 00 50 e3                                      cmp r0, #0
008368b8  02 00 00 0a                                      beq #0x8368c8
008368bc  7b 5e eb eb                                      bl #0x30e2b0
008368c0  00 30 a0 e3                                      mov r3, #0
008368c4  68 30 84 e5                                      str r3, [r4, #0x68]
008368c8  04 00 a0 e1                                      mov r0, r4
008368cc  cb ed ff eb                                      bl #0x832000
008368d0  04 00 a0 e1                                      mov r0, r4
008368d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008368d8  f8 e1 15 00 78 39 00 00                          .byte 0xf8, 0xe1, 0x15, 0x00, 0x78, 0x39, 0x00, 0x00

; FUNCTION 0x008368e0, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessageC1Ev
; demangled: GLXPlayerMessage::GLXPlayerMessage()
; decoder-mode: arm
008368e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008368e4  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
008368e8  00 40 a0 e1                                      mov r4, r0
008368ec  10 ee ff eb                                      bl #0x832134
008368f0  84 30 9f e5                                      ldr r3, [pc, #0x84]
008368f4  05 50 8f e0                                      add r5, pc, r5
008368f8  04 00 a0 e1                                      mov r0, r4
008368fc  03 30 95 e7                                      ldr r3, [r5, r3]
00836900  08 30 83 e2                                      add r3, r3, #8
00836904  00 30 84 e5                                      str r3, [r4]
00836908  2d eb ff eb                                      bl #0x8315c4
0083690c  28 04 00 e3                                      movw r0, #0x428
00836910  dd 5f eb eb                                      bl #0x30e88c
00836914  10 10 94 e5                                      ldr r1, [r4, #0x10]
00836918  18 20 94 e5                                      ldr r2, [r4, #0x18]
0083691c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00836920  00 50 a0 e1                                      mov r5, r0
00836924  60 dd ff eb                                      bl #0x82deac
00836928  00 30 a0 e3                                      mov r3, #0
0083692c  00 20 e0 e3                                      mvn r2, #0
00836930  04 00 a0 e1                                      mov r0, r4
00836934  20 50 84 e5                                      str r5, [r4, #0x20]
00836938  64 20 84 e5                                      str r2, [r4, #0x64]
0083693c  b4 30 84 e5                                      str r3, [r4, #0xb4]
00836940  3c 30 84 e5                                      str r3, [r4, #0x3c]
00836944  5c 30 84 e5                                      str r3, [r4, #0x5c]
00836948  40 30 84 e5                                      str r3, [r4, #0x40]
0083694c  44 30 84 e5                                      str r3, [r4, #0x44]
00836950  48 30 84 e5                                      str r3, [r4, #0x48]
00836954  4c 30 84 e5                                      str r3, [r4, #0x4c]
00836958  50 30 84 e5                                      str r3, [r4, #0x50]
0083695c  54 30 84 e5                                      str r3, [r4, #0x54]
00836960  58 30 84 e5                                      str r3, [r4, #0x58]
00836964  68 30 84 e5                                      str r3, [r4, #0x68]
00836968  60 30 84 e5                                      str r3, [r4, #0x60]
0083696c  98 f9 ff eb                                      bl #0x834fd4
00836970  04 00 a0 e1                                      mov r0, r4
00836974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00836978  9c e1 15 00 78 39 00 00                          .byte 0x9c, 0xe1, 0x15, 0x00, 0x78, 0x39, 0x00, 0x00

; FUNCTION 0x00836980, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerMessage
; alias: _ZN16GLXPlayerMessageC2Ev
; demangled: GLXPlayerMessage::GLXPlayerMessage()
; decoder-mode: arm
00836980  70 40 2d e9                                      push {r4, r5, r6, lr}
00836984  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00836988  00 40 a0 e1                                      mov r4, r0
0083698c  e8 ed ff eb                                      bl #0x832134
00836990  84 30 9f e5                                      ldr r3, [pc, #0x84]
00836994  05 50 8f e0                                      add r5, pc, r5
00836998  04 00 a0 e1                                      mov r0, r4
0083699c  03 30 95 e7                                      ldr r3, [r5, r3]
008369a0  08 30 83 e2                                      add r3, r3, #8
008369a4  00 30 84 e5                                      str r3, [r4]
008369a8  05 eb ff eb                                      bl #0x8315c4
008369ac  28 04 00 e3                                      movw r0, #0x428
008369b0  b5 5f eb eb                                      bl #0x30e88c
008369b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
008369b8  18 20 94 e5                                      ldr r2, [r4, #0x18]
008369bc  14 30 94 e5                                      ldr r3, [r4, #0x14]
008369c0  00 50 a0 e1                                      mov r5, r0
008369c4  38 dd ff eb                                      bl #0x82deac
008369c8  00 30 a0 e3                                      mov r3, #0
008369cc  00 20 e0 e3                                      mvn r2, #0
008369d0  04 00 a0 e1                                      mov r0, r4
008369d4  20 50 84 e5                                      str r5, [r4, #0x20]
008369d8  64 20 84 e5                                      str r2, [r4, #0x64]
008369dc  b4 30 84 e5                                      str r3, [r4, #0xb4]
008369e0  3c 30 84 e5                                      str r3, [r4, #0x3c]
008369e4  5c 30 84 e5                                      str r3, [r4, #0x5c]
008369e8  40 30 84 e5                                      str r3, [r4, #0x40]
008369ec  44 30 84 e5                                      str r3, [r4, #0x44]
008369f0  48 30 84 e5                                      str r3, [r4, #0x48]
008369f4  4c 30 84 e5                                      str r3, [r4, #0x4c]
008369f8  50 30 84 e5                                      str r3, [r4, #0x50]
008369fc  54 30 84 e5                                      str r3, [r4, #0x54]
00836a00  58 30 84 e5                                      str r3, [r4, #0x58]
00836a04  68 30 84 e5                                      str r3, [r4, #0x68]
00836a08  60 30 84 e5                                      str r3, [r4, #0x60]
00836a0c  70 f9 ff eb                                      bl #0x834fd4
00836a10  04 00 a0 e1                                      mov r0, r4
00836a14  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00836a18  fc e0 15 00 78 39 00 00                          .byte 0xfc, 0xe0, 0x15, 0x00, 0x78, 0x39, 0x00, 0x00
