; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00888fc0, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBuffer7GetTypeEv
; demangled: vox::StreamMemoryBuffer::GetType()
; decoder-mode: arm
00888fc0  00 00 a0 e3                                      mov r0, #0
00888fc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888ff8, declared_size=44, range_size=44, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBuffer13DestroyCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::StreamMemoryBuffer::DestroyCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
00888ff8  10 40 2d e9                                      push {r4, lr}
00888ffc  00 40 51 e2                                      subs r4, r1, #0
00889000  06 00 00 0a                                      beq #0x889020
00889004  00 30 94 e5                                      ldr r3, [r4]
00889008  04 00 a0 e1                                      mov r0, r4
0088900c  0f e0 a0 e1                                      mov lr, pc
00889010  00 f0 93 e5                                      ldr pc, [r3]
00889014  04 00 a0 e1                                      mov r0, r4
00889018  10 40 bd e8                                      pop {r4, lr}
0088901c  08 1d ea ea                                      b #0x310444
00889020  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00889024, declared_size=76, range_size=76, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBufferD1Ev
; demangled: vox::StreamMemoryBuffer::~StreamMemoryBuffer()
; decoder-mode: arm
00889024  10 40 2d e9                                      push {r4, lr}
00889028  38 30 9f e5                                      ldr r3, [pc, #0x38]
0088902c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00889030  00 40 a0 e1                                      mov r4, r0
00889034  03 30 8f e0                                      add r3, pc, r3
00889038  08 00 90 e5                                      ldr r0, [r0, #8]
0088903c  02 20 93 e7                                      ldr r2, [r3, r2]
00889040  00 00 50 e3                                      cmp r0, #0
00889044  08 20 82 e2                                      add r2, r2, #8
00889048  00 20 84 e5                                      str r2, [r4]
0088904c  03 00 00 0a                                      beq #0x889060
00889050  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
00889054  00 00 53 e3                                      cmp r3, #0
00889058  00 00 00 0a                                      beq #0x889060
0088905c  f8 1c ea eb                                      bl #0x310444
00889060  04 00 a0 e1                                      mov r0, r4
00889064  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00889068  5c ba 10 00 40 20 00 00                          .byte 0x5c, 0xba, 0x10, 0x00, 0x40, 0x20, 0x00, 0x00

; FUNCTION 0x00889070, declared_size=28, range_size=28, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBufferD0Ev
; demangled: vox::StreamMemoryBuffer::~StreamMemoryBuffer()
; decoder-mode: arm
00889070  10 40 2d e9                                      push {r4, lr}
00889074  00 40 a0 e1                                      mov r4, r0
00889078  e9 ff ff eb                                      bl #0x889024
0088907c  04 00 a0 e1                                      mov r0, r4
00889080  8a 14 ea eb                                      bl #0x30e2b0
00889084  04 00 a0 e1                                      mov r0, r4
00889088  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088908c, declared_size=76, range_size=76, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBufferD2Ev
; demangled: vox::StreamMemoryBuffer::~StreamMemoryBuffer()
; decoder-mode: arm
0088908c  10 40 2d e9                                      push {r4, lr}
00889090  38 30 9f e5                                      ldr r3, [pc, #0x38]
00889094  38 20 9f e5                                      ldr r2, [pc, #0x38]
00889098  00 40 a0 e1                                      mov r4, r0
0088909c  03 30 8f e0                                      add r3, pc, r3
008890a0  08 00 90 e5                                      ldr r0, [r0, #8]
008890a4  02 20 93 e7                                      ldr r2, [r3, r2]
008890a8  00 00 50 e3                                      cmp r0, #0
008890ac  08 20 82 e2                                      add r2, r2, #8
008890b0  00 20 84 e5                                      str r2, [r4]
008890b4  03 00 00 0a                                      beq #0x8890c8
008890b8  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
008890bc  00 00 53 e3                                      cmp r3, #0
008890c0  00 00 00 0a                                      beq #0x8890c8
008890c4  de 1c ea eb                                      bl #0x310444
008890c8  04 00 a0 e1                                      mov r0, r4
008890cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008890d0  f4 b9 10 00 40 20 00 00                          .byte 0xf4, 0xb9, 0x10, 0x00, 0x40, 0x20, 0x00, 0x00

; FUNCTION 0x008890d8, declared_size=84, range_size=84, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBuffer15CreateNewCursorEv
; demangled: vox::StreamMemoryBuffer::CreateNewCursor()
; decoder-mode: arm
008890d8  70 40 2d e9                                      push {r4, r5, r6, lr}
008890dc  00 50 a0 e1                                      mov r5, r0
008890e0  08 00 90 e5                                      ldr r0, [r0, #8]
008890e4  38 40 9f e5                                      ldr r4, [pc, #0x38]
008890e8  00 00 50 e3                                      cmp r0, #0
008890ec  04 40 8f e0                                      add r4, pc, r4
008890f0  0a 00 00 0a                                      beq #0x889120
008890f4  00 10 a0 e3                                      mov r1, #0
008890f8  0c 00 a0 e3                                      mov r0, #0xc
008890fc  51 1d ea eb                                      bl #0x310648
00889100  20 20 9f e5                                      ldr r2, [pc, #0x20]
00889104  00 30 a0 e1                                      mov r3, r0
00889108  00 10 a0 e3                                      mov r1, #0
0088910c  02 20 94 e7                                      ldr r2, [r4, r2]
00889110  04 50 80 e5                                      str r5, [r0, #4]
00889114  08 10 80 e5                                      str r1, [r0, #8]
00889118  08 20 82 e2                                      add r2, r2, #8
0088911c  00 20 83 e5                                      str r2, [r3]
00889120  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00889124  a4 b9 10 00 80 24 00 00                          .byte 0xa4, 0xb9, 0x10, 0x00, 0x80, 0x24, 0x00, 0x00

; FUNCTION 0x0088912c, declared_size=176, range_size=176, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBufferC1EPNS_24StreamMemoryBufferParamsE
; demangled: vox::StreamMemoryBuffer::StreamMemoryBuffer(vox::StreamMemoryBufferParams*)
; decoder-mode: arm
0088912c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00889130  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00889134  70 40 2d e9                                      push {r4, r5, r6, lr}
00889138  03 30 8f e0                                      add r3, pc, r3
0088913c  02 20 93 e7                                      ldr r2, [r3, r2]
00889140  00 50 51 e2                                      subs r5, r1, #0
00889144  01 c0 a0 e3                                      mov ip, #1
00889148  00 10 a0 e3                                      mov r1, #0
0088914c  08 20 82 e2                                      add r2, r2, #8
00889150  00 40 a0 e1                                      mov r4, r0
00889154  00 20 80 e5                                      str r2, [r0]
00889158  08 10 80 e5                                      str r1, [r0, #8]
0088915c  04 10 80 e5                                      str r1, [r0, #4]
00889160  0c c0 c0 e5                                      strb ip, [r0, #0xc]
00889164  18 00 00 0a                                      beq #0x8891cc
00889168  04 00 95 e5                                      ldr r0, [r5, #4]
0088916c  04 00 84 e5                                      str r0, [r4, #4]
00889170  08 30 d5 e5                                      ldrb r3, [r5, #8]
00889174  01 00 53 e1                                      cmp r3, r1
00889178  09 c0 d5 05                                      ldrbeq ip, [r5, #9]
0088917c  0c c0 c4 e5                                      strb ip, [r4, #0xc]
00889180  08 30 d5 e5                                      ldrb r3, [r5, #8]
00889184  00 00 53 e3                                      cmp r3, #0
00889188  0d 00 00 0a                                      beq #0x8891c4
0088918c  09 30 d5 e5                                      ldrb r3, [r5, #9]
00889190  00 00 53 e3                                      cmp r3, #0
00889194  0a 00 00 1a                                      bne #0x8891c4
00889198  00 00 50 e3                                      cmp r0, #0
0088919c  0a 00 00 da                                      ble #0x8891cc
008891a0  d4 1c ea eb                                      bl #0x3104f8
008891a4  00 00 50 e3                                      cmp r0, #0
008891a8  08 00 84 e5                                      str r0, [r4, #8]
008891ac  04 00 84 05                                      streq r0, [r4, #4]
008891b0  05 00 00 0a                                      beq #0x8891cc
008891b4  00 10 95 e5                                      ldr r1, [r5]
008891b8  04 20 94 e5                                      ldr r2, [r4, #4]
008891bc  a9 15 ea eb                                      bl #0x30e868
008891c0  01 00 00 ea                                      b #0x8891cc
008891c4  00 30 95 e5                                      ldr r3, [r5]
008891c8  08 30 84 e5                                      str r3, [r4, #8]
008891cc  04 00 a0 e1                                      mov r0, r4
008891d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008891d4  58 b9 10 00 40 20 00 00                          .byte 0x58, 0xb9, 0x10, 0x00, 0x40, 0x20, 0x00, 0x00

; FUNCTION 0x00889204, declared_size=176, range_size=176, mode=arm
; class-group: vox::StreamMemoryBuffer
; alias: _ZN3vox18StreamMemoryBufferC2EPNS_24StreamMemoryBufferParamsE
; demangled: vox::StreamMemoryBuffer::StreamMemoryBuffer(vox::StreamMemoryBufferParams*)
; decoder-mode: arm
00889204  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00889208  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0088920c  70 40 2d e9                                      push {r4, r5, r6, lr}
00889210  03 30 8f e0                                      add r3, pc, r3
00889214  02 20 93 e7                                      ldr r2, [r3, r2]
00889218  00 50 51 e2                                      subs r5, r1, #0
0088921c  01 c0 a0 e3                                      mov ip, #1
00889220  00 10 a0 e3                                      mov r1, #0
00889224  08 20 82 e2                                      add r2, r2, #8
00889228  00 40 a0 e1                                      mov r4, r0
0088922c  00 20 80 e5                                      str r2, [r0]
00889230  08 10 80 e5                                      str r1, [r0, #8]
00889234  04 10 80 e5                                      str r1, [r0, #4]
00889238  0c c0 c0 e5                                      strb ip, [r0, #0xc]
0088923c  18 00 00 0a                                      beq #0x8892a4
00889240  04 00 95 e5                                      ldr r0, [r5, #4]
00889244  04 00 84 e5                                      str r0, [r4, #4]
00889248  08 30 d5 e5                                      ldrb r3, [r5, #8]
0088924c  01 00 53 e1                                      cmp r3, r1
00889250  09 c0 d5 05                                      ldrbeq ip, [r5, #9]
00889254  0c c0 c4 e5                                      strb ip, [r4, #0xc]
00889258  08 30 d5 e5                                      ldrb r3, [r5, #8]
0088925c  00 00 53 e3                                      cmp r3, #0
00889260  0d 00 00 0a                                      beq #0x88929c
00889264  09 30 d5 e5                                      ldrb r3, [r5, #9]
00889268  00 00 53 e3                                      cmp r3, #0
0088926c  0a 00 00 1a                                      bne #0x88929c
00889270  00 00 50 e3                                      cmp r0, #0
00889274  0a 00 00 da                                      ble #0x8892a4
00889278  9e 1c ea eb                                      bl #0x3104f8
0088927c  00 00 50 e3                                      cmp r0, #0
00889280  08 00 84 e5                                      str r0, [r4, #8]
00889284  04 00 84 05                                      streq r0, [r4, #4]
00889288  05 00 00 0a                                      beq #0x8892a4
0088928c  00 10 95 e5                                      ldr r1, [r5]
00889290  04 20 94 e5                                      ldr r2, [r4, #4]
00889294  73 15 ea eb                                      bl #0x30e868
00889298  01 00 00 ea                                      b #0x8892a4
0088929c  00 30 95 e5                                      ldr r3, [r5]
008892a0  08 30 84 e5                                      str r3, [r4, #8]
008892a4  04 00 a0 e1                                      mov r0, r4
008892a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008892ac  80 b8 10 00 40 20 00 00                          .byte 0x80, 0xb8, 0x10, 0x00, 0x40, 0x20, 0x00, 0x00
