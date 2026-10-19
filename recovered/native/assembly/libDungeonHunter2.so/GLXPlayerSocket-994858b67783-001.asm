; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083003c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket11GetAcceptIPEv
; demangled: GLXPlayerSocket::GetAcceptIP()
; decoder-mode: arm
0083003c  24 08 90 e5                                      ldr r0, [r0, #0x824]
00830040  1e ff 2f e1                                      bx lr

; FUNCTION 0x00830044, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket13GetAcceptPortEv
; demangled: GLXPlayerSocket::GetAcceptPort()
; decoder-mode: arm
00830044  28 08 90 e5                                      ldr r0, [r0, #0x828]
00830048  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083004c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket13SetAcceptPortEi
; demangled: GLXPlayerSocket::SetAcceptPort(int)
; decoder-mode: arm
0083004c  28 18 80 e5                                      str r1, [r0, #0x828]
00830050  1e ff 2f e1                                      bx lr

; FUNCTION 0x00830054, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket9SetSocketEi
; demangled: GLXPlayerSocket::SetSocket(int)
; decoder-mode: arm
00830054  08 10 80 e5                                      str r1, [r0, #8]
00830058  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083005c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket13GetSocketTypeEv
; demangled: GLXPlayerSocket::GetSocketType()
; decoder-mode: arm
0083005c  20 08 90 e5                                      ldr r0, [r0, #0x820]
00830060  1e ff 2f e1                                      bx lr

; FUNCTION 0x00830064, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket13SetSocketTypeEi
; demangled: GLXPlayerSocket::SetSocketType(int)
; decoder-mode: arm
00830064  20 18 80 e5                                      str r1, [r0, #0x820]
00830068  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083006c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket17GetSendPercentageEv
; demangled: GLXPlayerSocket::GetSendPercentage()
; decoder-mode: arm
0083006c  50 08 90 e5                                      ldr r0, [r0, #0x850]
00830070  64 00 50 e3                                      cmp r0, #0x64
00830074  00 00 a0 83                                      movhi r0, #0
00830078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083007c, declared_size=64, range_size=64, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket6CancelEv
; demangled: GLXPlayerSocket::Cancel()
; decoder-mode: arm
0083007c  10 40 2d e9                                      push {r4, lr}
00830080  04 30 90 e5                                      ldr r3, [r0, #4]
00830084  00 00 53 e3                                      cmp r3, #0
00830088  07 00 53 13                                      cmpne r3, #7
0083008c  00 10 a0 13                                      movne r1, #0
00830090  01 10 a0 03                                      moveq r1, #1
00830094  07 00 00 0a                                      beq #0x8300b8
00830098  06 00 53 e3                                      cmp r3, #6
0083009c  05 00 00 0a                                      beq #0x8300b8
008300a0  08 30 a0 e3                                      mov r3, #8
008300a4  04 30 80 e5                                      str r3, [r0, #4]
008300a8  5c 18 80 e5                                      str r1, [r0, #0x85c]
008300ac  00 30 90 e5                                      ldr r3, [r0]
008300b0  0f e0 a0 e1                                      mov lr, pc
008300b4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008300b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008300bc, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket12IsInProgressEv
; demangled: GLXPlayerSocket::IsInProgress()
; decoder-mode: arm
008300bc  04 00 90 e5                                      ldr r0, [r0, #4]
008300c0  00 00 50 e3                                      cmp r0, #0
008300c4  07 00 50 13                                      cmpne r0, #7
008300c8  04 00 00 0a                                      beq #0x8300e0
008300cc  08 00 50 e3                                      cmp r0, #8
008300d0  02 00 00 0a                                      beq #0x8300e0
008300d4  06 00 50 e2                                      subs r0, r0, #6
008300d8  01 00 a0 13                                      movne r0, #1
008300dc  1e ff 2f e1                                      bx lr
008300e0  00 00 a0 e3                                      mov r0, #0
008300e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008300e8, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket15IsErrorOccurredEv
; demangled: GLXPlayerSocket::IsErrorOccurred()
; decoder-mode: arm
008300e8  04 00 90 e5                                      ldr r0, [r0, #4]
008300ec  07 00 50 e3                                      cmp r0, #7
008300f0  00 00 a0 13                                      movne r0, #0
008300f4  01 00 a0 03                                      moveq r0, #1
008300f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008301ac, declared_size=56, range_size=56, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket5StartEv
; demangled: GLXPlayerSocket::Start()
; decoder-mode: arm
008301ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008301b0  00 50 a0 e3                                      mov r5, #0
008301b4  00 40 a0 e1                                      mov r4, r0
008301b8  1c 58 80 e5                                      str r5, [r0, #0x81c]
008301bc  05 10 a0 e1                                      mov r1, r5
008301c0  1c 00 80 e2                                      add r0, r0, #0x1c
008301c4  02 2b a0 e3                                      mov r2, #0x800
008301c8  65 ec ff eb                                      bl #0x82b364
008301cc  00 30 e0 e3                                      mvn r3, #0
008301d0  08 30 84 e5                                      str r3, [r4, #8]
008301d4  01 30 a0 e3                                      mov r3, #1
008301d8  04 30 84 e5                                      str r3, [r4, #4]
008301dc  0c 50 84 e5                                      str r5, [r4, #0xc]
008301e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008301e4, declared_size=108, range_size=108, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocketD1Ev
; demangled: GLXPlayerSocket::~GLXPlayerSocket()
; decoder-mode: arm
008301e4  10 40 2d e9                                      push {r4, lr}
008301e8  58 30 9f e5                                      ldr r3, [pc, #0x58]
008301ec  58 20 9f e5                                      ldr r2, [pc, #0x58]
008301f0  00 40 a0 e1                                      mov r4, r0
008301f4  03 30 8f e0                                      add r3, pc, r3
008301f8  24 08 90 e5                                      ldr r0, [r0, #0x824]
008301fc  02 20 93 e7                                      ldr r2, [r3, r2]
00830200  00 00 50 e3                                      cmp r0, #0
00830204  08 20 82 e2                                      add r2, r2, #8
00830208  00 20 84 e5                                      str r2, [r4]
0083020c  02 00 00 0a                                      beq #0x83021c
00830210  a8 77 eb eb                                      bl #0x30e0b8
00830214  00 30 a0 e3                                      mov r3, #0
00830218  24 38 84 e5                                      str r3, [r4, #0x824]
0083021c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00830220  00 00 50 e3                                      cmp r0, #0
00830224  02 00 00 0a                                      beq #0x830234
00830228  a2 77 eb eb                                      bl #0x30e0b8
0083022c  00 30 a0 e3                                      mov r3, #0
00830230  14 30 84 e5                                      str r3, [r4, #0x14]
00830234  82 0e 84 e2                                      add r0, r4, #0x820
00830238  0c 00 80 e2                                      add r0, r0, #0xc
0083023c  da 8d eb eb                                      bl #0x3139ac
00830240  04 00 a0 e1                                      mov r0, r4
00830244  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00830248  9c 48 16 00 c4 09 00 00                          .byte 0x9c, 0x48, 0x16, 0x00, 0xc4, 0x09, 0x00, 0x00

; FUNCTION 0x00830250, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocketD0Ev
; demangled: GLXPlayerSocket::~GLXPlayerSocket()
; decoder-mode: arm
00830250  10 40 2d e9                                      push {r4, lr}
00830254  00 40 a0 e1                                      mov r4, r0
00830258  e1 ff ff eb                                      bl #0x8301e4
0083025c  04 00 a0 e1                                      mov r0, r4
00830260  12 78 eb eb                                      bl #0x30e2b0
00830264  04 00 a0 e1                                      mov r0, r4
00830268  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083026c, declared_size=108, range_size=108, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocketD2Ev
; demangled: GLXPlayerSocket::~GLXPlayerSocket()
; decoder-mode: arm
0083026c  10 40 2d e9                                      push {r4, lr}
00830270  58 30 9f e5                                      ldr r3, [pc, #0x58]
00830274  58 20 9f e5                                      ldr r2, [pc, #0x58]
00830278  00 40 a0 e1                                      mov r4, r0
0083027c  03 30 8f e0                                      add r3, pc, r3
00830280  24 08 90 e5                                      ldr r0, [r0, #0x824]
00830284  02 20 93 e7                                      ldr r2, [r3, r2]
00830288  00 00 50 e3                                      cmp r0, #0
0083028c  08 20 82 e2                                      add r2, r2, #8
00830290  00 20 84 e5                                      str r2, [r4]
00830294  02 00 00 0a                                      beq #0x8302a4
00830298  86 77 eb eb                                      bl #0x30e0b8
0083029c  00 30 a0 e3                                      mov r3, #0
008302a0  24 38 84 e5                                      str r3, [r4, #0x824]
008302a4  14 00 94 e5                                      ldr r0, [r4, #0x14]
008302a8  00 00 50 e3                                      cmp r0, #0
008302ac  02 00 00 0a                                      beq #0x8302bc
008302b0  80 77 eb eb                                      bl #0x30e0b8
008302b4  00 30 a0 e3                                      mov r3, #0
008302b8  14 30 84 e5                                      str r3, [r4, #0x14]
008302bc  82 0e 84 e2                                      add r0, r4, #0x820
008302c0  0c 00 80 e2                                      add r0, r0, #0xc
008302c4  b8 8d eb eb                                      bl #0x3139ac
008302c8  04 00 a0 e1                                      mov r0, r4
008302cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008302d0  14 48 16 00 c4 09 00 00                          .byte 0x14, 0x48, 0x16, 0x00, 0xc4, 0x09, 0x00, 0x00

; FUNCTION 0x008302d8, declared_size=24, range_size=24, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket11SetAcceptIPEPc
; demangled: GLXPlayerSocket::SetAcceptIP(char*)
; decoder-mode: arm
008302d8  10 40 2d e9                                      push {r4, lr}
008302dc  00 40 a0 e1                                      mov r4, r0
008302e0  01 00 a0 e1                                      mov r0, r1
008302e4  ad ed ff eb                                      bl #0x82b9a0
008302e8  24 08 84 e5                                      str r0, [r4, #0x824]
008302ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008302f0, declared_size=172, range_size=172, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocketC1EPciP23GLXPlayerSocketObserver
; demangled: GLXPlayerSocket::GLXPlayerSocket(char*, int, GLXPlayerSocketObserver*)
; decoder-mode: arm
008302f0  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
008302f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008302f8  98 e0 9f e5                                      ldr lr, [pc, #0x98]
008302fc  0c c0 8f e0                                      add ip, pc, ip
00830300  00 40 a0 e1                                      mov r4, r0
00830304  0e e0 9c e7                                      ldr lr, [ip, lr]
00830308  82 0e 80 e2                                      add r0, r0, #0x820
0083030c  0c 00 80 e2                                      add r0, r0, #0xc
00830310  08 e0 8e e2                                      add lr, lr, #8
00830314  01 50 a0 e1                                      mov r5, r1
00830318  10 20 84 e5                                      str r2, [r4, #0x10]
0083031c  18 30 84 e5                                      str r3, [r4, #0x18]
00830320  00 e0 84 e5                                      str lr, [r4]
00830324  3c 08 84 e5                                      str r0, [r4, #0x83c]
00830328  40 08 84 e5                                      str r0, [r4, #0x840]
0083032c  10 10 a0 e3                                      mov r1, #0x10
00830330  d1 84 eb eb                                      bl #0x31167c
00830334  3c 38 94 e5                                      ldr r3, [r4, #0x83c]
00830338  00 00 55 e3                                      cmp r5, #0
0083033c  00 20 a0 e3                                      mov r2, #0
00830340  00 20 c3 e5                                      strb r2, [r3]
00830344  14 50 84 05                                      streq r5, [r4, #0x14]
00830348  02 00 00 0a                                      beq #0x830358
0083034c  05 00 a0 e1                                      mov r0, r5
00830350  92 ed ff eb                                      bl #0x82b9a0
00830354  14 00 84 e5                                      str r0, [r4, #0x14]
00830358  00 30 a0 e3                                      mov r3, #0
0083035c  00 20 e0 e3                                      mvn r2, #0
00830360  08 20 84 e5                                      str r2, [r4, #8]
00830364  58 38 84 e5                                      str r3, [r4, #0x858]
00830368  0c 30 84 e5                                      str r3, [r4, #0xc]
0083036c  24 38 84 e5                                      str r3, [r4, #0x824]
00830370  5c 38 84 e5                                      str r3, [r4, #0x85c]
00830374  60 38 84 e5                                      str r3, [r4, #0x860]
00830378  64 38 84 e5                                      str r3, [r4, #0x864]
0083037c  68 38 84 e5                                      str r3, [r4, #0x868]
00830380  4c 38 84 e5                                      str r3, [r4, #0x84c]
00830384  50 38 84 e5                                      str r3, [r4, #0x850]
00830388  54 38 84 e5                                      str r3, [r4, #0x854]
0083038c  04 00 a0 e1                                      mov r0, r4
00830390  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00830394  94 47 16 00 c4 09 00 00                          .byte 0x94, 0x47, 0x16, 0x00, 0xc4, 0x09, 0x00, 0x00

; FUNCTION 0x0083039c, declared_size=172, range_size=172, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocketC2EPciP23GLXPlayerSocketObserver
; demangled: GLXPlayerSocket::GLXPlayerSocket(char*, int, GLXPlayerSocketObserver*)
; decoder-mode: arm
0083039c  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
008303a0  70 40 2d e9                                      push {r4, r5, r6, lr}
008303a4  98 e0 9f e5                                      ldr lr, [pc, #0x98]
008303a8  0c c0 8f e0                                      add ip, pc, ip
008303ac  00 40 a0 e1                                      mov r4, r0
008303b0  0e e0 9c e7                                      ldr lr, [ip, lr]
008303b4  82 0e 80 e2                                      add r0, r0, #0x820
008303b8  0c 00 80 e2                                      add r0, r0, #0xc
008303bc  08 e0 8e e2                                      add lr, lr, #8
008303c0  01 50 a0 e1                                      mov r5, r1
008303c4  10 20 84 e5                                      str r2, [r4, #0x10]
008303c8  18 30 84 e5                                      str r3, [r4, #0x18]
008303cc  00 e0 84 e5                                      str lr, [r4]
008303d0  3c 08 84 e5                                      str r0, [r4, #0x83c]
008303d4  40 08 84 e5                                      str r0, [r4, #0x840]
008303d8  10 10 a0 e3                                      mov r1, #0x10
008303dc  a6 84 eb eb                                      bl #0x31167c
008303e0  3c 38 94 e5                                      ldr r3, [r4, #0x83c]
008303e4  00 00 55 e3                                      cmp r5, #0
008303e8  00 20 a0 e3                                      mov r2, #0
008303ec  00 20 c3 e5                                      strb r2, [r3]
008303f0  14 50 84 05                                      streq r5, [r4, #0x14]
008303f4  02 00 00 0a                                      beq #0x830404
008303f8  05 00 a0 e1                                      mov r0, r5
008303fc  67 ed ff eb                                      bl #0x82b9a0
00830400  14 00 84 e5                                      str r0, [r4, #0x14]
00830404  00 30 a0 e3                                      mov r3, #0
00830408  00 20 e0 e3                                      mvn r2, #0
0083040c  08 20 84 e5                                      str r2, [r4, #8]
00830410  58 38 84 e5                                      str r3, [r4, #0x858]
00830414  0c 30 84 e5                                      str r3, [r4, #0xc]
00830418  24 38 84 e5                                      str r3, [r4, #0x824]
0083041c  5c 38 84 e5                                      str r3, [r4, #0x85c]
00830420  60 38 84 e5                                      str r3, [r4, #0x860]
00830424  64 38 84 e5                                      str r3, [r4, #0x864]
00830428  68 38 84 e5                                      str r3, [r4, #0x868]
0083042c  4c 38 84 e5                                      str r3, [r4, #0x84c]
00830430  50 38 84 e5                                      str r3, [r4, #0x850]
00830434  54 38 84 e5                                      str r3, [r4, #0x854]
00830438  04 00 a0 e1                                      mov r0, r4
0083043c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00830440  e8 46 16 00 c4 09 00 00                          .byte 0xe8, 0x46, 0x16, 0x00, 0xc4, 0x09, 0x00, 0x00

; FUNCTION 0x00830448, declared_size=372, range_size=372, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket15ParseHttpHeaderEPc
; demangled: GLXPlayerSocket::ParseHttpHeader(char*)
; decoder-mode: arm
00830448  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083044c  5c 41 9f e5                                      ldr r4, [pc, #0x15c]
00830450  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00830454  2c d0 4d e2                                      sub sp, sp, #0x2c
00830458  04 40 8f e0                                      add r4, pc, r4
0083045c  02 30 94 e7                                      ldr r3, [r4, r2]
00830460  00 b0 a0 e1                                      mov fp, r0
00830464  01 00 a0 e1                                      mov r0, r1
00830468  00 30 93 e5                                      ldr r3, [r3]
0083046c  01 50 a0 e1                                      mov r5, r1
00830470  04 20 8d e5                                      str r2, [sp, #4]
00830474  24 30 8d e5                                      str r3, [sp, #0x24]
00830478  cb ea ff eb                                      bl #0x82afac
0083047c  01 60 80 e2                                      add r6, r0, #1
00830480  06 00 a0 e1                                      mov r0, r6
00830484  11 77 eb eb                                      bl #0x30e0d0
00830488  06 20 a0 e1                                      mov r2, r6
0083048c  00 70 a0 e1                                      mov r7, r0
00830490  00 10 a0 e3                                      mov r1, #0
00830494  b2 eb ff eb                                      bl #0x82b364
00830498  05 00 a0 e1                                      mov r0, r5
0083049c  07 10 a0 e1                                      mov r1, r7
008304a0  2b ea ff eb                                      bl #0x82ad54
008304a4  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
008304a8  82 0e 8b e2                                      add r0, fp, #0x820
008304ac  04 30 a0 e3                                      mov r3, #4
008304b0  01 10 8f e0                                      add r1, pc, r1
008304b4  00 20 a0 e3                                      mov r2, #0
008304b8  0c 00 80 e2                                      add r0, r0, #0xc
008304bc  0e ff ff eb                                      bl #0x8300fc
008304c0  01 a0 80 e2                                      add sl, r0, #1
008304c4  00 90 a0 e1                                      mov sb, r0
008304c8  0a 00 a0 e1                                      mov r0, sl
008304cc  ff 76 eb eb                                      bl #0x30e0d0
008304d0  00 60 a0 e1                                      mov r6, r0
008304d4  0a 00 a0 e1                                      mov r0, sl
008304d8  fc 76 eb eb                                      bl #0x30e0d0
008304dc  0a 20 a0 e1                                      mov r2, sl
008304e0  00 50 a0 e1                                      mov r5, r0
008304e4  00 10 a0 e3                                      mov r1, #0
008304e8  06 00 a0 e1                                      mov r0, r6
008304ec  9c eb ff eb                                      bl #0x82b364
008304f0  0a 20 a0 e1                                      mov r2, sl
008304f4  05 00 a0 e1                                      mov r0, r5
008304f8  00 10 a0 e3                                      mov r1, #0
008304fc  98 eb ff eb                                      bl #0x82b364
00830500  09 20 a0 e1                                      mov r2, sb
00830504  40 18 9b e5                                      ldr r1, [fp, #0x840]
00830508  06 00 a0 e1                                      mov r0, r6
0083050c  8f eb ff eb                                      bl #0x82b350
00830510  0c 80 8d e2                                      add r8, sp, #0xc
00830514  06 00 a0 e1                                      mov r0, r6
00830518  05 10 a0 e1                                      mov r1, r5
0083051c  0c ea ff eb                                      bl #0x82ad54
00830520  08 20 8d e2                                      add r2, sp, #8
00830524  05 10 a0 e1                                      mov r1, r5
00830528  08 00 a0 e1                                      mov r0, r8
0083052c  ee 8e eb eb                                      bl #0x3140ec
00830530  07 00 a0 e1                                      mov r0, r7
00830534  46 76 eb eb                                      bl #0x30de54
00830538  07 10 a0 e1                                      mov r1, r7
0083053c  00 30 a0 e1                                      mov r3, r0
00830540  00 20 a0 e3                                      mov r2, #0
00830544  08 00 a0 e1                                      mov r0, r8
00830548  eb fe ff eb                                      bl #0x8300fc
0083054c  00 00 57 e3                                      cmp r7, #0
00830550  00 a0 a0 e1                                      mov sl, r0
00830554  01 00 00 0a                                      beq #0x830560
00830558  07 00 a0 e1                                      mov r0, r7
0083055c  d5 76 eb eb                                      bl #0x30e0b8
00830560  00 00 56 e3                                      cmp r6, #0
00830564  01 00 00 0a                                      beq #0x830570
00830568  06 00 a0 e1                                      mov r0, r6
0083056c  d1 76 eb eb                                      bl #0x30e0b8
00830570  00 00 55 e3                                      cmp r5, #0
00830574  01 00 00 0a                                      beq #0x830580
00830578  05 00 a0 e1                                      mov r0, r5
0083057c  cd 76 eb eb                                      bl #0x30e0b8
00830580  08 00 a0 e1                                      mov r0, r8
00830584  08 8d eb eb                                      bl #0x3139ac
00830588  04 20 9d e5                                      ldr r2, [sp, #4]
0083058c  0a 00 a0 e1                                      mov r0, sl
00830590  02 30 94 e7                                      ldr r3, [r4, r2]
00830594  24 20 9d e5                                      ldr r2, [sp, #0x24]
00830598  00 30 93 e5                                      ldr r3, [r3]
0083059c  03 00 52 e1                                      cmp r2, r3
008305a0  01 00 00 1a                                      bne #0x8305ac
008305a4  2c d0 8d e2                                      add sp, sp, #0x2c
008305a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008305ac  57 77 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008305b0  38 46 16 00 ac 40 00 00 b0 c4 0d 00              .byte 0x38, 0x46, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0xc4, 0x0d, 0x00

; FUNCTION 0x008305bc, declared_size=192, range_size=192, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket16RemoveHttpHeaderEv
; demangled: GLXPlayerSocket::RemoveHttpHeader()
; decoder-mode: arm
008305bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008305c0  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
008305c4  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
008305c8  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
008305cc  04 40 8f e0                                      add r4, pc, r4
008305d0  07 30 94 e7                                      ldr r3, [r4, r7]
008305d4  82 5e 80 e2                                      add r5, r0, #0x820
008305d8  0c 50 85 e2                                      add r5, r5, #0xc
008305dc  00 c0 93 e5                                      ldr ip, [r3]
008305e0  06 60 8f e0                                      add r6, pc, r6
008305e4  28 d0 4d e2                                      sub sp, sp, #0x28
008305e8  05 00 a0 e1                                      mov r0, r5
008305ec  06 10 a0 e1                                      mov r1, r6
008305f0  00 20 a0 e3                                      mov r2, #0
008305f4  04 30 a0 e3                                      mov r3, #4
008305f8  24 c0 8d e5                                      str ip, [sp, #0x24]
008305fc  be fe ff eb                                      bl #0x8300fc
00830600  00 80 50 e2                                      subs r8, r0, #0
00830604  11 00 00 da                                      ble #0x830650
00830608  06 00 a0 e1                                      mov r0, r6
0083060c  66 ea ff eb                                      bl #0x82afac
00830610  0c 60 8d e2                                      add r6, sp, #0xc
00830614  08 20 80 e0                                      add r2, r0, r8
00830618  08 c0 8d e2                                      add ip, sp, #8
0083061c  06 00 a0 e1                                      mov r0, r6
00830620  05 10 a0 e1                                      mov r1, r5
00830624  00 30 e0 e3                                      mvn r3, #0
00830628  00 c0 8d e5                                      str ip, [sp]
0083062c  a9 95 ef eb                                      bl #0x415cd8
00830630  06 00 55 e1                                      cmp r5, r6
00830634  03 00 00 0a                                      beq #0x830648
00830638  05 00 a0 e1                                      mov r0, r5
0083063c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00830640  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00830644  e5 80 eb eb                                      bl #0x3109e0
00830648  06 00 a0 e1                                      mov r0, r6
0083064c  d6 8c eb eb                                      bl #0x3139ac
00830650  07 30 94 e7                                      ldr r3, [r4, r7]
00830654  24 20 9d e5                                      ldr r2, [sp, #0x24]
00830658  00 30 93 e5                                      ldr r3, [r3]
0083065c  03 00 52 e1                                      cmp r2, r3
00830660  01 00 00 1a                                      bne #0x83066c
00830664  28 d0 8d e2                                      add sp, sp, #0x28
00830668  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083066c  27 77 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00830670  c4 44 16 00 ac 40 00 00 80 c3 0d 00              .byte 0xc4, 0x44, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0xc3, 0x0d, 0x00

; FUNCTION 0x0083067c, declared_size=1588, range_size=1588, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket19ParseChunkedContentEv
; demangled: GLXPlayerSocket::ParseChunkedContent()
; decoder-mode: arm
0083067c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00830680  bc 15 9f e5                                      ldr r1, [pc, #0x5bc]
00830684  bc 25 9f e5                                      ldr r2, [pc, #0x5bc]
00830688  49 df 4d e2                                      sub sp, sp, #0x124
0083068c  01 10 8f e0                                      add r1, pc, r1
00830690  02 30 91 e7                                      ldr r3, [r1, r2]
00830694  14 00 8d e5                                      str r0, [sp, #0x14]
00830698  3c 20 8d e5                                      str r2, [sp, #0x3c]
0083069c  82 ce 80 e2                                      add ip, r0, #0x820
008306a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
008306a4  a0 45 9f e5                                      ldr r4, [pc, #0x5a0]
008306a8  0c c0 8c e2                                      add ip, ip, #0xc
008306ac  00 30 93 e5                                      ldr r3, [r3]
008306b0  10 c0 8d e5                                      str ip, [sp, #0x10]
008306b4  41 af 8d e2                                      add sl, sp, #0x104
008306b8  38 10 8d e5                                      str r1, [sp, #0x38]
008306bc  40 18 92 e5                                      ldr r1, [r2, #0x840]
008306c0  04 40 8f e0                                      add r4, pc, r4
008306c4  3c 28 92 e5                                      ldr r2, [r2, #0x83c]
008306c8  0a 00 a0 e1                                      mov r0, sl
008306cc  1c 31 8d e5                                      str r3, [sp, #0x11c]
008306d0  14 a1 8d e5                                      str sl, [sp, #0x114]
008306d4  18 a1 8d e5                                      str sl, [sp, #0x118]
008306d8  ec 90 8d e2                                      add sb, sp, #0xec
008306dc  01 84 eb eb                                      bl #0x3116e8
008306e0  04 10 a0 e1                                      mov r1, r4
008306e4  04 20 a0 e1                                      mov r2, r4
008306e8  10 00 9d e5                                      ldr r0, [sp, #0x10]
008306ec  bb 80 eb eb                                      bl #0x3109e0
008306f0  d4 30 8d e2                                      add r3, sp, #0xd4
008306f4  04 10 a0 e1                                      mov r1, r4
008306f8  58 20 8d e2                                      add r2, sp, #0x58
008306fc  09 00 a0 e1                                      mov r0, sb
00830700  1c 30 8d e5                                      str r3, [sp, #0x1c]
00830704  78 8e eb eb                                      bl #0x3140ec
00830708  54 20 8d e2                                      add r2, sp, #0x54
0083070c  04 10 a0 e1                                      mov r1, r4
00830710  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00830714  74 8e eb eb                                      bl #0x3140ec
00830718  30 05 9f e5                                      ldr r0, [pc, #0x530]
0083071c  18 11 9d e5                                      ldr r1, [sp, #0x118]
00830720  00 00 8f e0                                      add r0, pc, r0
00830724  16 ec ff eb                                      bl #0x82b784
00830728  24 15 9f e5                                      ldr r1, [pc, #0x524]
0083072c  00 20 a0 e3                                      mov r2, #0
00830730  02 30 a0 e3                                      mov r3, #2
00830734  01 10 8f e0                                      add r1, pc, r1
00830738  0a 00 a0 e1                                      mov r0, sl
0083073c  6e fe ff eb                                      bl #0x8300fc
00830740  00 60 a0 e1                                      mov r6, r0
00830744  00 10 a0 e1                                      mov r1, r0
00830748  08 05 9f e5                                      ldr r0, [pc, #0x508]
0083074c  00 00 8f e0                                      add r0, pc, r0
00830750  0b ec ff eb                                      bl #0x82b784
00830754  00 00 56 e3                                      cmp r6, #0
00830758  27 01 00 da                                      ble #0x830bfc
0083075c  bc 40 8d e2                                      add r4, sp, #0xbc
00830760  50 c0 8d e2                                      add ip, sp, #0x50
00830764  06 30 a0 e1                                      mov r3, r6
00830768  0a 10 a0 e1                                      mov r1, sl
0083076c  00 20 a0 e3                                      mov r2, #0
00830770  04 00 a0 e1                                      mov r0, r4
00830774  00 c0 8d e5                                      str ip, [sp]
00830778  56 95 ef eb                                      bl #0x415cd8
0083077c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
00830780  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00830784  09 00 a0 e1                                      mov r0, sb
00830788  94 80 eb eb                                      bl #0x3109e0
0083078c  c8 74 9f e5                                      ldr r7, [pc, #0x4c8]
00830790  04 00 a0 e1                                      mov r0, r4
00830794  c4 44 9f e5                                      ldr r4, [pc, #0x4c4]
00830798  83 8c eb eb                                      bl #0x3139ac
0083079c  00 50 a0 e3                                      mov r5, #0
008307a0  04 40 8f e0                                      add r4, pc, r4
008307a4  07 70 8f e0                                      add r7, pc, r7
008307a8  05 00 00 ea                                      b #0x8307c4
008307ac  d5 10 93 e1                                      ldrsb r1, [r3, r5]
008307b0  04 00 a0 e1                                      mov r0, r4
008307b4  01 50 85 e2                                      add r5, r5, #1
008307b8  f1 eb ff eb                                      bl #0x82b784
008307bc  05 00 56 e1                                      cmp r6, r5
008307c0  0d 00 00 0a                                      beq #0x8307fc
008307c4  00 31 9d e5                                      ldr r3, [sp, #0x100]
008307c8  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
008307cc  02 20 63 e0                                      rsb r2, r3, r2
008307d0  02 00 55 e1                                      cmp r5, r2
008307d4  f4 ff ff 3a                                      blo #0x8307ac
008307d8  07 00 a0 e1                                      mov r0, r7
008307dc  d1 36 02 eb                                      bl #0x8be328
008307e0  00 31 9d e5                                      ldr r3, [sp, #0x100]
008307e4  04 00 a0 e1                                      mov r0, r4
008307e8  d5 10 93 e1                                      ldrsb r1, [r3, r5]
008307ec  01 50 85 e2                                      add r5, r5, #1
008307f0  e3 eb ff eb                                      bl #0x82b784
008307f4  05 00 56 e1                                      cmp r6, r5
008307f8  f1 ff ff 1a                                      bne #0x8307c4
008307fc  60 14 9f e5                                      ldr r1, [pc, #0x460]
00830800  00 20 a0 e3                                      mov r2, #0
00830804  01 30 a0 e3                                      mov r3, #1
00830808  01 10 8f e0                                      add r1, pc, r1
0083080c  09 00 a0 e1                                      mov r0, sb
00830810  39 fe ff eb                                      bl #0x8300fc
00830814  00 50 a0 e1                                      mov r5, r0
00830818  00 10 a0 e1                                      mov r1, r0
0083081c  44 04 9f e5                                      ldr r0, [pc, #0x444]
00830820  00 00 8f e0                                      add r0, pc, r0
00830824  d6 eb ff eb                                      bl #0x82b784
00830828  00 00 55 e3                                      cmp r5, #0
0083082c  25 00 00 da                                      ble #0x8308c8
00830830  a4 70 8d e2                                      add r7, sp, #0xa4
00830834  4c c0 8d e2                                      add ip, sp, #0x4c
00830838  05 30 a0 e1                                      mov r3, r5
0083083c  09 10 a0 e1                                      mov r1, sb
00830840  00 20 a0 e3                                      mov r2, #0
00830844  07 00 a0 e1                                      mov r0, r7
00830848  1c 84 9f e5                                      ldr r8, [pc, #0x41c]
0083084c  00 c0 8d e5                                      str ip, [sp]
00830850  20 95 ef eb                                      bl #0x415cd8
00830854  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
00830858  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
0083085c  09 00 a0 e1                                      mov r0, sb
00830860  5e 80 eb eb                                      bl #0x3109e0
00830864  07 00 a0 e1                                      mov r0, r7
00830868  4f 8c eb eb                                      bl #0x3139ac
0083086c  00 70 a0 e3                                      mov r7, #0
00830870  08 80 8f e0                                      add r8, pc, r8
00830874  05 00 00 ea                                      b #0x830890
00830878  d7 10 93 e1                                      ldrsb r1, [r3, r7]
0083087c  04 00 a0 e1                                      mov r0, r4
00830880  01 70 87 e2                                      add r7, r7, #1
00830884  be eb ff eb                                      bl #0x82b784
00830888  07 00 55 e1                                      cmp r5, r7
0083088c  0d 00 00 0a                                      beq #0x8308c8
00830890  00 31 9d e5                                      ldr r3, [sp, #0x100]
00830894  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00830898  02 20 63 e0                                      rsb r2, r3, r2
0083089c  07 00 52 e1                                      cmp r2, r7
008308a0  f4 ff ff 8a                                      bhi #0x830878
008308a4  08 00 a0 e1                                      mov r0, r8
008308a8  9e 36 02 eb                                      bl #0x8be328
008308ac  00 31 9d e5                                      ldr r3, [sp, #0x100]
008308b0  04 00 a0 e1                                      mov r0, r4
008308b4  d7 10 93 e1                                      ldrsb r1, [r3, r7]
008308b8  01 70 87 e2                                      add r7, r7, #1
008308bc  b0 eb ff eb                                      bl #0x82b784
008308c0  07 00 55 e1                                      cmp r5, r7
008308c4  f1 ff ff 1a                                      bne #0x830890
008308c8  10 20 a0 e3                                      mov r2, #0x10
008308cc  00 10 a0 e3                                      mov r1, #0
008308d0  00 01 9d e5                                      ldr r0, [sp, #0x100]
008308d4  7a 77 eb eb                                      bl #0x30e6c4
008308d8  00 10 a0 e1                                      mov r1, r0
008308dc  00 50 a0 e1                                      mov r5, r0
008308e0  88 03 9f e5                                      ldr r0, [pc, #0x388]
008308e4  02 60 86 e2                                      add r6, r6, #2
008308e8  00 00 8f e0                                      add r0, pc, r0
008308ec  a4 eb ff eb                                      bl #0x82b784
008308f0  7c 03 9f e5                                      ldr r0, [pc, #0x37c]
008308f4  06 10 a0 e1                                      mov r1, r6
008308f8  00 00 8f e0                                      add r0, pc, r0
008308fc  a0 eb ff eb                                      bl #0x82b784
00830900  00 00 55 e3                                      cmp r5, #0
00830904  b8 00 00 da                                      ble #0x830bec
00830908  68 33 9f e5                                      ldr r3, [pc, #0x368]
0083090c  68 c3 9f e5                                      ldr ip, [pc, #0x368]
00830910  68 13 9f e5                                      ldr r1, [pc, #0x368]
00830914  20 30 8d e5                                      str r3, [sp, #0x20]
00830918  64 33 9f e5                                      ldr r3, [pc, #0x364]
0083091c  64 23 9f e5                                      ldr r2, [pc, #0x364]
00830920  28 c0 8d e5                                      str ip, [sp, #0x28]
00830924  03 30 8f e0                                      add r3, pc, r3
00830928  08 30 8d e5                                      str r3, [sp, #8]
0083092c  58 33 9f e5                                      ldr r3, [pc, #0x358]
00830930  58 c3 9f e5                                      ldr ip, [pc, #0x358]
00830934  58 43 9f e5                                      ldr r4, [pc, #0x358]
00830938  58 83 9f e5                                      ldr r8, [pc, #0x358]
0083093c  30 10 8d e5                                      str r1, [sp, #0x30]
00830940  2c 20 8d e5                                      str r2, [sp, #0x2c]
00830944  03 30 8f e0                                      add r3, pc, r3
00830948  8c 10 8d e2                                      add r1, sp, #0x8c
0083094c  48 20 8d e2                                      add r2, sp, #0x48
00830950  09 b0 a0 e1                                      mov fp, sb
00830954  34 c0 8d e5                                      str ip, [sp, #0x34]
00830958  04 40 8f e0                                      add r4, pc, r4
0083095c  18 30 8d e5                                      str r3, [sp, #0x18]
00830960  08 80 8f e0                                      add r8, pc, r8
00830964  0c 10 8d e5                                      str r1, [sp, #0xc]
00830968  24 20 8d e5                                      str r2, [sp, #0x24]
0083096c  0a 90 a0 e1                                      mov sb, sl
00830970  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00830974  05 30 a0 e1                                      mov r3, r5
00830978  06 20 a0 e1                                      mov r2, r6
0083097c  09 10 a0 e1                                      mov r1, sb
00830980  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00830984  00 c0 8d e5                                      str ip, [sp]
00830988  d2 94 ef eb                                      bl #0x415cd8
0083098c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00830990  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00830994  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00830998  10 80 eb eb                                      bl #0x3109e0
0083099c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008309a0  01 8c eb eb                                      bl #0x3139ac
008309a4  28 20 9d e5                                      ldr r2, [sp, #0x28]
008309a8  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
008309ac  05 a0 86 e0                                      add sl, r6, r5
008309b0  02 00 8f e0                                      add r0, pc, r2
008309b4  72 eb ff eb                                      bl #0x82b784
008309b8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
008309bc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
008309c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
008309c4  8e 7f eb eb                                      bl #0x310804
008309c8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
008309cc  30 30 9d e5                                      ldr r3, [sp, #0x30]
008309d0  02 70 8a e2                                      add r7, sl, #2
008309d4  40 18 9c e5                                      ldr r1, [ip, #0x840]
008309d8  03 00 8f e0                                      add r0, pc, r3
008309dc  68 eb ff eb                                      bl #0x82b784
008309e0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
008309e4  07 10 a0 e1                                      mov r1, r7
008309e8  02 00 8f e0                                      add r0, pc, r2
008309ec  64 eb ff eb                                      bl #0x82b784
008309f0  20 30 9d e5                                      ldr r3, [sp, #0x20]
008309f4  07 20 a0 e1                                      mov r2, r7
008309f8  09 00 a0 e1                                      mov r0, sb
008309fc  03 10 8f e0                                      add r1, pc, r3
00830a00  02 30 a0 e3                                      mov r3, #2
00830a04  bc fd ff eb                                      bl #0x8300fc
00830a08  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00830a0c  00 60 a0 e1                                      mov r6, r0
00830a10  00 10 a0 e1                                      mov r1, r0
00830a14  0c 00 8f e0                                      add r0, pc, ip
00830a18  59 eb ff eb                                      bl #0x82b784
00830a1c  00 00 56 e3                                      cmp r6, #0
00830a20  73 00 00 da                                      ble #0x830bf4
00830a24  74 50 8d e2                                      add r5, sp, #0x74
00830a28  44 c0 8d e2                                      add ip, sp, #0x44
00830a2c  06 30 a0 e1                                      mov r3, r6
00830a30  09 10 a0 e1                                      mov r1, sb
00830a34  07 20 a0 e1                                      mov r2, r7
00830a38  05 00 a0 e1                                      mov r0, r5
00830a3c  00 c0 8d e5                                      str ip, [sp]
00830a40  a4 94 ef eb                                      bl #0x415cd8
00830a44  88 10 9d e5                                      ldr r1, [sp, #0x88]
00830a48  84 20 9d e5                                      ldr r2, [sp, #0x84]
00830a4c  0b 00 a0 e1                                      mov r0, fp
00830a50  e2 7f eb eb                                      bl #0x3109e0
00830a54  05 00 a0 e1                                      mov r0, r5
00830a58  d3 8b eb eb                                      bl #0x3139ac
00830a5c  38 02 9f e5                                      ldr r0, [pc, #0x238]
00830a60  00 11 9d e5                                      ldr r1, [sp, #0x100]
00830a64  00 00 8f e0                                      add r0, pc, r0
00830a68  45 eb ff eb                                      bl #0x82b784
00830a6c  06 00 57 e1                                      cmp r7, r6
00830a70  19 00 00 aa                                      bge #0x830adc
00830a74  fe 3f 0f e3                                      movw r3, #0xfffe
00830a78  ff 3f 4f e3                                      movt r3, #0xffff
00830a7c  03 30 6a e0                                      rsb r3, sl, r3
00830a80  06 a0 83 e0                                      add sl, r3, r6
00830a84  00 50 a0 e3                                      mov r5, #0
00830a88  05 00 00 ea                                      b #0x830aa4
00830a8c  d5 10 93 e1                                      ldrsb r1, [r3, r5]
00830a90  04 00 a0 e1                                      mov r0, r4
00830a94  01 50 85 e2                                      add r5, r5, #1
00830a98  39 eb ff eb                                      bl #0x82b784
00830a9c  0a 00 55 e1                                      cmp r5, sl
00830aa0  0d 00 00 0a                                      beq #0x830adc
00830aa4  00 31 9d e5                                      ldr r3, [sp, #0x100]
00830aa8  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00830aac  02 20 63 e0                                      rsb r2, r3, r2
00830ab0  05 00 52 e1                                      cmp r2, r5
00830ab4  f4 ff ff 8a                                      bhi #0x830a8c
00830ab8  08 00 9d e5                                      ldr r0, [sp, #8]
00830abc  19 36 02 eb                                      bl #0x8be328
00830ac0  00 31 9d e5                                      ldr r3, [sp, #0x100]
00830ac4  04 00 a0 e1                                      mov r0, r4
00830ac8  d5 10 93 e1                                      ldrsb r1, [r3, r5]
00830acc  01 50 85 e2                                      add r5, r5, #1
00830ad0  2b eb ff eb                                      bl #0x82b784
00830ad4  0a 00 55 e1                                      cmp r5, sl
00830ad8  f1 ff ff 1a                                      bne #0x830aa4
00830adc  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
00830ae0  00 20 a0 e3                                      mov r2, #0
00830ae4  01 30 a0 e3                                      mov r3, #1
00830ae8  01 10 8f e0                                      add r1, pc, r1
00830aec  0b 00 a0 e1                                      mov r0, fp
00830af0  81 fd ff eb                                      bl #0x8300fc
00830af4  00 50 a0 e1                                      mov r5, r0
00830af8  00 10 a0 e1                                      mov r1, r0
00830afc  a0 01 9f e5                                      ldr r0, [pc, #0x1a0]
00830b00  00 00 8f e0                                      add r0, pc, r0
00830b04  1e eb ff eb                                      bl #0x82b784
00830b08  00 00 55 e3                                      cmp r5, #0
00830b0c  23 00 00 da                                      ble #0x830ba0
00830b10  5c a0 8d e2                                      add sl, sp, #0x5c
00830b14  40 c0 8d e2                                      add ip, sp, #0x40
00830b18  05 30 a0 e1                                      mov r3, r5
00830b1c  0b 10 a0 e1                                      mov r1, fp
00830b20  00 20 a0 e3                                      mov r2, #0
00830b24  0a 00 a0 e1                                      mov r0, sl
00830b28  00 c0 8d e5                                      str ip, [sp]
00830b2c  69 94 ef eb                                      bl #0x415cd8
00830b30  70 10 9d e5                                      ldr r1, [sp, #0x70]
00830b34  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00830b38  0b 00 a0 e1                                      mov r0, fp
00830b3c  a7 7f eb eb                                      bl #0x3109e0
00830b40  0a 00 a0 e1                                      mov r0, sl
00830b44  98 8b eb eb                                      bl #0x3139ac
00830b48  00 a0 a0 e3                                      mov sl, #0
00830b4c  05 00 00 ea                                      b #0x830b68
00830b50  da 10 93 e1                                      ldrsb r1, [r3, sl]
00830b54  08 00 a0 e1                                      mov r0, r8
00830b58  01 a0 8a e2                                      add sl, sl, #1
00830b5c  08 eb ff eb                                      bl #0x82b784
00830b60  0a 00 55 e1                                      cmp r5, sl
00830b64  0d 00 00 0a                                      beq #0x830ba0
00830b68  00 31 9d e5                                      ldr r3, [sp, #0x100]
00830b6c  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00830b70  02 20 63 e0                                      rsb r2, r3, r2
00830b74  0a 00 52 e1                                      cmp r2, sl
00830b78  f4 ff ff 8a                                      bhi #0x830b50
00830b7c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00830b80  e8 35 02 eb                                      bl #0x8be328
00830b84  00 31 9d e5                                      ldr r3, [sp, #0x100]
00830b88  08 00 a0 e1                                      mov r0, r8
00830b8c  da 10 93 e1                                      ldrsb r1, [r3, sl]
00830b90  01 a0 8a e2                                      add sl, sl, #1
00830b94  fa ea ff eb                                      bl #0x82b784
00830b98  0a 00 55 e1                                      cmp r5, sl
00830b9c  f1 ff ff 1a                                      bne #0x830b68
00830ba0  10 20 a0 e3                                      mov r2, #0x10
00830ba4  00 10 a0 e3                                      mov r1, #0
00830ba8  00 01 9d e5                                      ldr r0, [sp, #0x100]
00830bac  c4 76 eb eb                                      bl #0x30e6c4
00830bb0  00 10 a0 e1                                      mov r1, r0
00830bb4  00 50 a0 e1                                      mov r5, r0
00830bb8  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
00830bbc  02 70 87 e2                                      add r7, r7, #2
00830bc0  06 60 87 e0                                      add r6, r7, r6
00830bc4  00 00 8f e0                                      add r0, pc, r0
00830bc8  ed ea ff eb                                      bl #0x82b784
00830bcc  d8 00 9f e5                                      ldr r0, [pc, #0xd8]
00830bd0  06 10 a0 e1                                      mov r1, r6
00830bd4  00 00 8f e0                                      add r0, pc, r0
00830bd8  e9 ea ff eb                                      bl #0x82b784
00830bdc  00 00 55 e3                                      cmp r5, #0
00830be0  62 ff ff ca                                      bgt #0x830970
00830be4  09 a0 a0 e1                                      mov sl, sb
00830be8  0b 90 a0 e1                                      mov sb, fp
00830bec  01 40 a0 e3                                      mov r4, #1
00830bf0  02 00 00 ea                                      b #0x830c00
00830bf4  09 a0 a0 e1                                      mov sl, sb
00830bf8  0b 90 a0 e1                                      mov sb, fp
00830bfc  00 40 a0 e3                                      mov r4, #0
00830c00  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00830c04  68 8b eb eb                                      bl #0x3139ac
00830c08  09 00 a0 e1                                      mov r0, sb
00830c0c  66 8b eb eb                                      bl #0x3139ac
00830c10  0a 00 a0 e1                                      mov r0, sl
00830c14  64 8b eb eb                                      bl #0x3139ac
00830c18  38 20 9d e5                                      ldr r2, [sp, #0x38]
00830c1c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00830c20  04 00 a0 e1                                      mov r0, r4
00830c24  01 30 92 e7                                      ldr r3, [r2, r1]
00830c28  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
00830c2c  00 30 93 e5                                      ldr r3, [r3]
00830c30  03 00 52 e1                                      cmp r2, r3
00830c34  01 00 00 1a                                      bne #0x830c40
00830c38  49 df 8d e2                                      add sp, sp, #0x124
00830c3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00830c40  b2 75 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00830c44  04 44 16 00 ac 40 00 00 48 b1 09 00 40 c5 0d 00  .byte 0x04, 0x44, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0xb1, 0x09, 0x00, 0x40, 0xc5, 0x0d, 0x00
00830c54  cc f8 08 00 34 c5 0d 00 b4 dc 08 00 f8 c4 0d 00  .byte 0xcc, 0xf8, 0x08, 0x00, 0x34, 0xc5, 0x0d, 0x00, 0xb4, 0xdc, 0x08, 0x00, 0xf8, 0xc4, 0x0d, 0x00
00830c64  28 0c 09 00 90 c4 0d 00 e8 db 08 00 e8 c3 0d 00  .byte 0x28, 0x0c, 0x09, 0x00, 0x90, 0xc4, 0x0d, 0x00, 0xe8, 0xdb, 0x08, 0x00, 0xe8, 0xc3, 0x0d, 0x00
00830c74  f0 c3 0d 00 04 f6 08 00 50 c3 0d 00 40 c3 0d 00  .byte 0xf0, 0xc3, 0x0d, 0x00, 0x04, 0xf6, 0x08, 0x00, 0x50, 0xc3, 0x0d, 0x00, 0x40, 0xc3, 0x0d, 0x00
00830c84  34 db 08 00 00 c3 0d 00 14 db 08 00 24 c3 0d 00  .byte 0x34, 0xdb, 0x08, 0x00, 0x00, 0xc3, 0x0d, 0x00, 0x14, 0xdb, 0x08, 0x00, 0x24, 0xc3, 0x0d, 0x00
00830c94  40 c3 0d 00 38 c3 0d 00 f4 c2 0d 00 48 09 09 00  .byte 0x40, 0xc3, 0x0d, 0x00, 0x38, 0xc3, 0x0d, 0x00, 0xf4, 0xc2, 0x0d, 0x00, 0x48, 0x09, 0x09, 0x00
00830ca4  78 c2 0d 00 0c c1 0d 00 14 c1 0d 00              .byte 0x78, 0xc2, 0x0d, 0x00, 0x0c, 0xc1, 0x0d, 0x00, 0x14, 0xc1, 0x0d, 0x00

; FUNCTION 0x00830cb0, declared_size=624, range_size=624, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket20CalculateTotalLengthEv
; demangled: GLXPlayerSocket::CalculateTotalLength()
; decoder-mode: arm
00830cb0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00830cb4  48 52 9f e5                                      ldr r5, [pc, #0x248]
00830cb8  48 82 9f e5                                      ldr r8, [pc, #0x248]
00830cbc  48 c2 9f e5                                      ldr ip, [pc, #0x248]
00830cc0  05 50 8f e0                                      add r5, pc, r5
00830cc4  08 30 95 e7                                      ldr r3, [r5, r8]
00830cc8  c4 d0 4d e2                                      sub sp, sp, #0xc4
00830ccc  a8 40 8d e2                                      add r4, sp, #0xa8
00830cd0  00 30 93 e5                                      ldr r3, [r3]
00830cd4  0c c0 8f e0                                      add ip, pc, ip
00830cd8  04 70 a0 e1                                      mov r7, r4
00830cdc  bc 30 8d e5                                      str r3, [sp, #0xbc]
00830ce0  00 60 a0 e1                                      mov r6, r0
00830ce4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00830ce8  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
00830cec  b0 c0 dc e1                                      ldrh ip, [ip]
00830cf0  18 e2 9f e5                                      ldr lr, [pc, #0x218]
00830cf4  94 a0 8d e2                                      add sl, sp, #0x94
00830cf8  b0 c0 c7 e1                                      strh ip, [r7]
00830cfc  0e e0 8f e0                                      add lr, pc, lr
00830d00  0a c0 a0 e1                                      mov ip, sl
00830d04  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00830d08  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00830d0c  00 12 9f e5                                      ldr r1, [pc, #0x200]
00830d10  b0 e0 de e1                                      ldrh lr, [lr]
00830d14  82 6e 86 e2                                      add r6, r6, #0x820
00830d18  0c 60 86 e2                                      add r6, r6, #0xc
00830d1c  06 00 a0 e1                                      mov r0, r6
00830d20  04 30 a0 e3                                      mov r3, #4
00830d24  01 10 8f e0                                      add r1, pc, r1
00830d28  00 20 a0 e3                                      mov r2, #0
00830d2c  b0 e0 cc e1                                      strh lr, [ip]
00830d30  f1 fc ff eb                                      bl #0x8300fc
00830d34  00 30 50 e2                                      subs r3, r0, #0
00830d38  00 60 e0 b3                                      mvnlt r6, #0
00830d3c  35 00 00 ba                                      blt #0x830e18
00830d40  7c 70 8d e2                                      add r7, sp, #0x7c
00830d44  06 10 a0 e1                                      mov r1, r6
00830d48  18 c0 8d e2                                      add ip, sp, #0x18
00830d4c  00 20 a0 e3                                      mov r2, #0
00830d50  07 00 a0 e1                                      mov r0, r7
00830d54  00 c0 8d e5                                      str ip, [sp]
00830d58  de 93 ef eb                                      bl #0x415cd8
00830d5c  04 00 a0 e1                                      mov r0, r4
00830d60  3b 74 eb eb                                      bl #0x30de54
00830d64  04 10 a0 e1                                      mov r1, r4
00830d68  00 30 a0 e1                                      mov r3, r0
00830d6c  00 20 a0 e3                                      mov r2, #0
00830d70  07 00 a0 e1                                      mov r0, r7
00830d74  e0 fc ff eb                                      bl #0x8300fc
00830d78  00 60 50 e2                                      subs r6, r0, #0
00830d7c  2d 00 00 ba                                      blt #0x830e38
00830d80  04 00 a0 e1                                      mov r0, r4
00830d84  88 e8 ff eb                                      bl #0x82afac
00830d88  34 40 8d e2                                      add r4, sp, #0x34
00830d8c  06 20 80 e0                                      add r2, r0, r6
00830d90  0c c0 8d e2                                      add ip, sp, #0xc
00830d94  07 10 a0 e1                                      mov r1, r7
00830d98  00 30 e0 e3                                      mvn r3, #0
00830d9c  04 00 a0 e1                                      mov r0, r4
00830da0  00 c0 8d e5                                      str ip, [sp]
00830da4  cb 93 ef eb                                      bl #0x415cd8
00830da8  68 11 9f e5                                      ldr r1, [pc, #0x168]
00830dac  02 30 a0 e3                                      mov r3, #2
00830db0  04 00 a0 e1                                      mov r0, r4
00830db4  00 20 a0 e3                                      mov r2, #0
00830db8  01 10 8f e0                                      add r1, pc, r1
00830dbc  ce fc ff eb                                      bl #0x8300fc
00830dc0  00 30 50 e2                                      subs r3, r0, #0
00830dc4  49 00 00 ba                                      blt #0x830ef0
00830dc8  1c 60 8d e2                                      add r6, sp, #0x1c
00830dcc  08 c0 8d e2                                      add ip, sp, #8
00830dd0  04 10 a0 e1                                      mov r1, r4
00830dd4  00 20 a0 e3                                      mov r2, #0
00830dd8  06 00 a0 e1                                      mov r0, r6
00830ddc  00 c0 8d e5                                      str ip, [sp]
00830de0  bc 93 ef eb                                      bl #0x415cd8
00830de4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00830de8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00830dec  04 00 a0 e1                                      mov r0, r4
00830df0  fa 7e eb eb                                      bl #0x3109e0
00830df4  06 00 a0 e1                                      mov r0, r6
00830df8  eb 8a eb eb                                      bl #0x3139ac
00830dfc  48 00 9d e5                                      ldr r0, [sp, #0x48]
00830e00  46 e9 ff eb                                      bl #0x82b320
00830e04  00 60 a0 e1                                      mov r6, r0
00830e08  04 00 a0 e1                                      mov r0, r4
00830e0c  e6 8a eb eb                                      bl #0x3139ac
00830e10  07 00 a0 e1                                      mov r0, r7
00830e14  e4 8a eb eb                                      bl #0x3139ac
00830e18  08 30 95 e7                                      ldr r3, [r5, r8]
00830e1c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00830e20  06 00 a0 e1                                      mov r0, r6
00830e24  00 30 93 e5                                      ldr r3, [r3]
00830e28  03 00 52 e1                                      cmp r2, r3
00830e2c  33 00 00 1a                                      bne #0x830f00
00830e30  c4 d0 8d e2                                      add sp, sp, #0xc4
00830e34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00830e38  0a 00 a0 e1                                      mov r0, sl
00830e3c  04 74 eb eb                                      bl #0x30de54
00830e40  0a 10 a0 e1                                      mov r1, sl
00830e44  00 30 a0 e1                                      mov r3, r0
00830e48  00 20 a0 e3                                      mov r2, #0
00830e4c  07 00 a0 e1                                      mov r0, r7
00830e50  a9 fc ff eb                                      bl #0x8300fc
00830e54  00 40 50 e2                                      subs r4, r0, #0
00830e58  00 60 a0 b3                                      movlt r6, #0
00830e5c  eb ff ff ba                                      blt #0x830e10
00830e60  0a 00 a0 e1                                      mov r0, sl
00830e64  50 e8 ff eb                                      bl #0x82afac
00830e68  04 20 80 e0                                      add r2, r0, r4
00830e6c  64 40 8d e2                                      add r4, sp, #0x64
00830e70  00 30 e0 e3                                      mvn r3, #0
00830e74  14 c0 8d e2                                      add ip, sp, #0x14
00830e78  07 10 a0 e1                                      mov r1, r7
00830e7c  04 00 a0 e1                                      mov r0, r4
00830e80  00 c0 8d e5                                      str ip, [sp]
00830e84  93 93 ef eb                                      bl #0x415cd8
00830e88  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00830e8c  04 00 a0 e1                                      mov r0, r4
00830e90  00 20 a0 e3                                      mov r2, #0
00830e94  01 10 8f e0                                      add r1, pc, r1
00830e98  b7 fc ff eb                                      bl #0x83017c
00830e9c  00 30 50 e2                                      subs r3, r0, #0
00830ea0  12 00 00 ba                                      blt #0x830ef0
00830ea4  4c 60 8d e2                                      add r6, sp, #0x4c
00830ea8  10 c0 8d e2                                      add ip, sp, #0x10
00830eac  04 10 a0 e1                                      mov r1, r4
00830eb0  06 00 a0 e1                                      mov r0, r6
00830eb4  00 20 a0 e3                                      mov r2, #0
00830eb8  00 c0 8d e5                                      str ip, [sp]
00830ebc  85 93 ef eb                                      bl #0x415cd8
00830ec0  60 10 9d e5                                      ldr r1, [sp, #0x60]
00830ec4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00830ec8  04 00 a0 e1                                      mov r0, r4
00830ecc  c3 7e eb eb                                      bl #0x3109e0
00830ed0  06 00 a0 e1                                      mov r0, r6
00830ed4  b4 8a eb eb                                      bl #0x3139ac
00830ed8  78 00 9d e5                                      ldr r0, [sp, #0x78]
00830edc  0f e9 ff eb                                      bl #0x82b320
00830ee0  00 60 a0 e1                                      mov r6, r0
00830ee4  04 00 a0 e1                                      mov r0, r4
00830ee8  af 8a eb eb                                      bl #0x3139ac
00830eec  c7 ff ff ea                                      b #0x830e10
00830ef0  04 00 a0 e1                                      mov r0, r4
00830ef4  ac 8a eb eb                                      bl #0x3139ac
00830ef8  00 60 e0 e3                                      mvn r6, #0
00830efc  c3 ff ff ea                                      b #0x830e10
00830f00  02 75 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00830f04  d0 3d 16 00 ac 40 00 00 c4 c0 0d 00 b4 c0 0d 00  .byte 0xd0, 0x3d, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc4, 0xc0, 0x0d, 0x00, 0xb4, 0xc0, 0x0d, 0x00
00830f14  3c bc 0d 00 48 f2 08 00 6c f1 08 00              .byte 0x3c, 0xbc, 0x0d, 0x00, 0x48, 0xf2, 0x08, 0x00, 0x6c, 0xf1, 0x08, 0x00

; FUNCTION 0x00830f20, declared_size=1544, range_size=1544, mode=arm
; class-group: GLXPlayerSocket
; alias: _ZN15GLXPlayerSocket3RunEv
; demangled: GLXPlayerSocket::Run()
; decoder-mode: arm
00830f20  70 40 2d e9                                      push {r4, r5, r6, lr}
00830f24  04 10 90 e5                                      ldr r1, [r0, #4]
00830f28  00 40 a0 e1                                      mov r4, r0
00830f2c  00 00 51 e3                                      cmp r1, #0
00830f30  07 00 51 13                                      cmpne r1, #7
00830f34  03 00 00 1a                                      bne #0x830f48
00830f38  90 05 9f e5                                      ldr r0, [pc, #0x590]
00830f3c  00 00 8f e0                                      add r0, pc, r0
00830f40  70 40 bd e8                                      pop {r4, r5, r6, lr}
00830f44  0e ea ff ea                                      b #0x82b784
00830f48  08 00 51 e3                                      cmp r1, #8
00830f4c  f9 ff ff 0a                                      beq #0x830f38
00830f50  01 10 41 e2                                      sub r1, r1, #1
00830f54  04 00 51 e3                                      cmp r1, #4
00830f58  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
00830f5c  2e 00 00 ea                                      b #0x83101c
00830f60  b7 00 00 ea                                      b #0x831244
00830f64  9d 00 00 ea                                      b #0x8311e0
00830f68  01 00 00 ea                                      b #0x830f74
00830f6c  43 00 00 ea                                      b #0x831080
00830f70  2a 00 00 ea                                      b #0x831020
00830f74  00 30 94 e5                                      ldr r3, [r4]
00830f78  04 00 a0 e1                                      mov r0, r4
00830f7c  01 10 a0 e3                                      mov r1, #1
00830f80  0f e0 a0 e1                                      mov lr, pc
00830f84  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00830f88  00 00 50 e3                                      cmp r0, #0
00830f8c  23 01 00 ba                                      blt #0x831420
00830f90  21 00 00 0a                                      beq #0x83101c
00830f94  18 30 94 e5                                      ldr r3, [r4, #0x18]
00830f98  03 00 a0 e1                                      mov r0, r3
00830f9c  00 30 93 e5                                      ldr r3, [r3]
00830fa0  0f e0 a0 e1                                      mov lr, pc
00830fa4  04 f0 93 e5                                      ldr pc, [r3, #4]
00830fa8  18 30 94 e5                                      ldr r3, [r4, #0x18]
00830fac  00 50 a0 e1                                      mov r5, r0
00830fb0  03 00 a0 e1                                      mov r0, r3
00830fb4  00 30 93 e5                                      ldr r3, [r3]
00830fb8  0f e0 a0 e1                                      mov lr, pc
00830fbc  00 f0 93 e5                                      ldr pc, [r3]
00830fc0  4c 38 94 e5                                      ldr r3, [r4, #0x84c]
00830fc4  05 20 63 e0                                      rsb r2, r3, r5
00830fc8  02 0b 52 e3                                      cmp r2, #0x800
00830fcc  03 10 80 e0                                      add r1, r0, r3
00830fd0  02 2b a0 c3                                      movgt r2, #0x800
00830fd4  00 30 94 e5                                      ldr r3, [r4]
00830fd8  04 00 a0 e1                                      mov r0, r4
00830fdc  0f e0 a0 e1                                      mov lr, pc
00830fe0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00830fe4  00 00 50 e3                                      cmp r0, #0
00830fe8  30 01 00 ba                                      blt #0x8314b0
00830fec  4c 68 94 e5                                      ldr r6, [r4, #0x84c]
00830ff0  00 00 55 e3                                      cmp r5, #0
00830ff4  06 60 80 e0                                      add r6, r0, r6
00830ff8  4c 68 84 e5                                      str r6, [r4, #0x84c]
00830ffc  04 00 00 da                                      ble #0x831014
00831000  64 00 a0 e3                                      mov r0, #0x64
00831004  90 06 00 e0                                      mul r0, r0, r6
00831008  05 10 a0 e1                                      mov r1, r5
0083100c  a4 74 eb eb                                      bl #0x30e2a4
00831010  50 08 84 e5                                      str r0, [r4, #0x850]
00831014  06 00 55 e1                                      cmp r5, r6
00831018  ae 00 00 0a                                      beq #0x8312d8
0083101c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831020  ac 04 9f e5                                      ldr r0, [pc, #0x4ac]
00831024  00 00 8f e0                                      add r0, pc, r0
00831028  d5 e9 ff eb                                      bl #0x82b784
0083102c  00 30 94 e5                                      ldr r3, [r4]
00831030  04 00 a0 e1                                      mov r0, r4
00831034  0f e0 a0 e1                                      mov lr, pc
00831038  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0083103c  40 18 94 e5                                      ldr r1, [r4, #0x840]
00831040  18 30 94 e5                                      ldr r3, [r4, #0x18]
00831044  3c 28 94 e5                                      ldr r2, [r4, #0x83c]
00831048  03 00 a0 e1                                      mov r0, r3
0083104c  02 20 61 e0                                      rsb r2, r1, r2
00831050  00 30 93 e5                                      ldr r3, [r3]
00831054  0f e0 a0 e1                                      mov lr, pc
00831058  08 f0 93 e5                                      ldr pc, [r3, #8]
0083105c  74 14 9f e5                                      ldr r1, [pc, #0x474]
00831060  82 0e 84 e2                                      add r0, r4, #0x820
00831064  0c 00 80 e2                                      add r0, r0, #0xc
00831068  01 10 8f e0                                      add r1, pc, r1
0083106c  01 20 a0 e1                                      mov r2, r1
00831070  5a 7e eb eb                                      bl #0x3109e0
00831074  06 30 a0 e3                                      mov r3, #6
00831078  04 30 84 e5                                      str r3, [r4, #4]
0083107c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831080  00 30 94 e5                                      ldr r3, [r4]
00831084  04 00 a0 e1                                      mov r0, r4
00831088  00 10 a0 e3                                      mov r1, #0
0083108c  0f e0 a0 e1                                      mov lr, pc
00831090  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00831094  00 00 50 e3                                      cmp r0, #0
00831098  df ff ff da                                      ble #0x83101c
0083109c  38 04 9f e5                                      ldr r0, [pc, #0x438]
008310a0  1c 50 84 e2                                      add r5, r4, #0x1c
008310a4  00 00 8f e0                                      add r0, pc, r0
008310a8  b5 e9 ff eb                                      bl #0x82b784
008310ac  05 00 a0 e1                                      mov r0, r5
008310b0  00 10 a0 e3                                      mov r1, #0
008310b4  02 2b a0 e3                                      mov r2, #0x800
008310b8  a9 e8 ff eb                                      bl #0x82b364
008310bc  00 30 94 e5                                      ldr r3, [r4]
008310c0  04 00 a0 e1                                      mov r0, r4
008310c4  05 10 a0 e1                                      mov r1, r5
008310c8  02 2b a0 e3                                      mov r2, #0x800
008310cc  0f e0 a0 e1                                      mov lr, pc
008310d0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
008310d4  00 00 50 e3                                      cmp r0, #0
008310d8  df 00 00 ba                                      blt #0x83145c
008310dc  64 00 00 0a                                      beq #0x831274
008310e0  82 6e 84 e2                                      add r6, r4, #0x820
008310e4  00 20 84 e0                                      add r2, r4, r0
008310e8  0c 60 86 e2                                      add r6, r6, #0xc
008310ec  05 10 a0 e1                                      mov r1, r5
008310f0  1c 20 82 e2                                      add r2, r2, #0x1c
008310f4  06 00 a0 e1                                      mov r0, r6
008310f8  c1 7d eb eb                                      bl #0x310804
008310fc  45 38 d4 e5                                      ldrb r3, [r4, #0x845]
00831100  00 00 53 e3                                      cmp r3, #0
00831104  1a 00 00 0a                                      beq #0x831174
00831108  d0 53 9f e5                                      ldr r5, [pc, #0x3d0]
0083110c  06 00 a0 e1                                      mov r0, r6
00831110  00 20 a0 e3                                      mov r2, #0
00831114  05 50 8f e0                                      add r5, pc, r5
00831118  05 10 a0 e1                                      mov r1, r5
0083111c  16 fc ff eb                                      bl #0x83017c
00831120  00 00 50 e3                                      cmp r0, #0
00831124  bc ff ff da                                      ble #0x83101c
00831128  05 10 a0 e1                                      mov r1, r5
0083112c  00 20 a0 e3                                      mov r2, #0
00831130  06 00 a0 e1                                      mov r0, r6
00831134  10 fc ff eb                                      bl #0x83017c
00831138  a4 13 9f e5                                      ldr r1, [pc, #0x3a4]
0083113c  04 00 a0 e1                                      mov r0, r4
00831140  01 10 8f e0                                      add r1, pc, r1
00831144  bf fc ff eb                                      bl #0x830448
00831148  00 00 50 e3                                      cmp r0, #0
0083114c  04 00 00 ba                                      blt #0x831164
00831150  04 00 a0 e1                                      mov r0, r4
00831154  d5 fe ff eb                                      bl #0x830cb0
00831158  01 30 a0 e3                                      mov r3, #1
0083115c  48 08 84 e5                                      str r0, [r4, #0x848]
00831160  46 38 c4 e5                                      strb r3, [r4, #0x846]
00831164  04 00 a0 e1                                      mov r0, r4
00831168  13 fd ff eb                                      bl #0x8305bc
0083116c  00 30 a0 e3                                      mov r3, #0
00831170  45 38 c4 e5                                      strb r3, [r4, #0x845]
00831174  3c 58 94 e5                                      ldr r5, [r4, #0x83c]
00831178  40 28 94 e5                                      ldr r2, [r4, #0x840]
0083117c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00831180  05 50 62 e0                                      rsb r5, r2, r5
00831184  03 00 a0 e1                                      mov r0, r3
00831188  05 10 a0 e1                                      mov r1, r5
0083118c  00 30 93 e5                                      ldr r3, [r3]
00831190  0f e0 a0 e1                                      mov lr, pc
00831194  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00831198  46 38 d4 e5                                      ldrb r3, [r4, #0x846]
0083119c  00 00 53 e3                                      cmp r3, #0
008311a0  9d ff ff 0a                                      beq #0x83101c
008311a4  48 18 94 e5                                      ldr r1, [r4, #0x848]
008311a8  05 00 51 e1                                      cmp r1, r5
008311ac  9a ff ff 1a                                      bne #0x83101c
008311b0  30 03 9f e5                                      ldr r0, [pc, #0x330]
008311b4  05 30 a0 e3                                      mov r3, #5
008311b8  04 30 84 e5                                      str r3, [r4, #4]
008311bc  00 00 8f e0                                      add r0, pc, r0
008311c0  6f e9 ff eb                                      bl #0x82b784
008311c4  db e7 ff eb                                      bl #0x82b138
008311c8  58 38 94 e5                                      ldr r3, [r4, #0x858]
008311cc  00 10 63 e0                                      rsb r1, r3, r0
008311d0  14 03 9f e5                                      ldr r0, [pc, #0x314]
008311d4  00 00 8f e0                                      add r0, pc, r0
008311d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
008311dc  68 e9 ff ea                                      b #0x82b784
008311e0  00 30 94 e5                                      ldr r3, [r4]
008311e4  04 00 a0 e1                                      mov r0, r4
008311e8  0f e0 a0 e1                                      mov lr, pc
008311ec  34 f0 93 e5                                      ldr pc, [r3, #0x34]
008311f0  00 50 50 e2                                      subs r5, r0, #0
008311f4  62 00 00 1a                                      bne #0x831384
008311f8  5c 38 94 e5                                      ldr r3, [r4, #0x85c]
008311fc  01 00 53 e3                                      cmp r3, #1
00831200  5b 00 00 0a                                      beq #0x831374
00831204  00 30 94 e5                                      ldr r3, [r4]
00831208  04 00 a0 e1                                      mov r0, r4
0083120c  0f e0 a0 e1                                      mov lr, pc
00831210  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00831214  00 10 a0 e1                                      mov r1, r0
00831218  d0 02 9f e5                                      ldr r0, [pc, #0x2d0]
0083121c  00 00 8f e0                                      add r0, pc, r0
00831220  57 e9 ff eb                                      bl #0x82b784
00831224  00 30 94 e5                                      ldr r3, [r4]
00831228  04 00 a0 e1                                      mov r0, r4
0083122c  0f e0 a0 e1                                      mov lr, pc
00831230  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00831234  07 30 a0 e3                                      mov r3, #7
00831238  5c 58 84 e5                                      str r5, [r4, #0x85c]
0083123c  04 30 84 e5                                      str r3, [r4, #4]
00831240  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831244  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00831248  00 00 53 e3                                      cmp r3, #0
0083124c  58 00 00 0a                                      beq #0x8313b4
00831250  00 30 94 e5                                      ldr r3, [r4]
00831254  04 00 a0 e1                                      mov r0, r4
00831258  0f e0 a0 e1                                      mov lr, pc
0083125c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00831260  00 00 50 e3                                      cmp r0, #0
00831264  39 00 00 0a                                      beq #0x831350
00831268  02 30 a0 e3                                      mov r3, #2
0083126c  04 30 84 e5                                      str r3, [r4, #4]
00831270  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831274  78 02 9f e5                                      ldr r0, [pc, #0x278]
00831278  00 00 8f e0                                      add r0, pc, r0
0083127c  40 e9 ff eb                                      bl #0x82b784
00831280  46 38 d4 e5                                      ldrb r3, [r4, #0x846]
00831284  00 00 53 e3                                      cmp r3, #0
00831288  01 00 00 1a                                      bne #0x831294
0083128c  04 00 a0 e1                                      mov r0, r4
00831290  f9 fc ff eb                                      bl #0x83067c
00831294  40 18 94 e5                                      ldr r1, [r4, #0x840]
00831298  18 30 94 e5                                      ldr r3, [r4, #0x18]
0083129c  3c 28 94 e5                                      ldr r2, [r4, #0x83c]
008312a0  03 00 a0 e1                                      mov r0, r3
008312a4  02 20 61 e0                                      rsb r2, r1, r2
008312a8  00 30 93 e5                                      ldr r3, [r3]
008312ac  0f e0 a0 e1                                      mov lr, pc
008312b0  08 f0 93 e5                                      ldr pc, [r3, #8]
008312b4  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
008312b8  82 0e 84 e2                                      add r0, r4, #0x820
008312bc  0c 00 80 e2                                      add r0, r0, #0xc
008312c0  01 10 8f e0                                      add r1, pc, r1
008312c4  01 20 a0 e1                                      mov r2, r1
008312c8  c4 7d eb eb                                      bl #0x3109e0
008312cc  06 30 a0 e3                                      mov r3, #6
008312d0  04 30 84 e5                                      str r3, [r4, #4]
008312d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008312d8  1c 02 9f e5                                      ldr r0, [pc, #0x21c]
008312dc  00 60 a0 e3                                      mov r6, #0
008312e0  00 00 8f e0                                      add r0, pc, r0
008312e4  26 e9 ff eb                                      bl #0x82b784
008312e8  10 12 9f e5                                      ldr r1, [pc, #0x210]
008312ec  82 0e 84 e2                                      add r0, r4, #0x820
008312f0  1c 68 84 e5                                      str r6, [r4, #0x81c]
008312f4  01 10 8f e0                                      add r1, pc, r1
008312f8  01 20 a0 e1                                      mov r2, r1
008312fc  0c 00 80 e2                                      add r0, r0, #0xc
00831300  b6 7d eb eb                                      bl #0x3109e0
00831304  f8 01 9f e5                                      ldr r0, [pc, #0x1f8]
00831308  01 30 a0 e3                                      mov r3, #1
0083130c  45 38 c4 e5                                      strb r3, [r4, #0x845]
00831310  05 10 a0 e1                                      mov r1, r5
00831314  00 00 8f e0                                      add r0, pc, r0
00831318  46 68 c4 e5                                      strb r6, [r4, #0x846]
0083131c  44 68 c4 e5                                      strb r6, [r4, #0x844]
00831320  17 e9 ff eb                                      bl #0x82b784
00831324  83 e7 ff eb                                      bl #0x82b138
00831328  54 38 94 e5                                      ldr r3, [r4, #0x854]
0083132c  00 10 63 e0                                      rsb r1, r3, r0
00831330  d0 01 9f e5                                      ldr r0, [pc, #0x1d0]
00831334  00 00 8f e0                                      add r0, pc, r0
00831338  11 e9 ff eb                                      bl #0x82b784
0083133c  7d e7 ff eb                                      bl #0x82b138
00831340  04 30 a0 e3                                      mov r3, #4
00831344  04 30 84 e5                                      str r3, [r4, #4]
00831348  58 08 84 e5                                      str r0, [r4, #0x858]
0083134c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831350  04 00 a0 e1                                      mov r0, r4
00831354  00 30 94 e5                                      ldr r3, [r4]
00831358  0f e0 a0 e1                                      mov lr, pc
0083135c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00831360  00 10 a0 e1                                      mov r1, r0
00831364  a0 01 9f e5                                      ldr r0, [pc, #0x1a0]
00831368  00 00 8f e0                                      add r0, pc, r0
0083136c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00831370  03 e9 ff ea                                      b #0x82b784
00831374  94 01 9f e5                                      ldr r0, [pc, #0x194]
00831378  00 00 8f e0                                      add r0, pc, r0
0083137c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00831380  ff e8 ff ea                                      b #0x82b784
00831384  88 01 9f e5                                      ldr r0, [pc, #0x188]
00831388  00 50 a0 e3                                      mov r5, #0
0083138c  00 00 8f e0                                      add r0, pc, r0
00831390  fb e8 ff eb                                      bl #0x82b784
00831394  4c 58 84 e5                                      str r5, [r4, #0x84c]
00831398  50 58 84 e5                                      str r5, [r4, #0x850]
0083139c  65 e7 ff eb                                      bl #0x82b138
008313a0  03 30 a0 e3                                      mov r3, #3
008313a4  04 30 84 e5                                      str r3, [r4, #4]
008313a8  54 08 84 e5                                      str r0, [r4, #0x854]
008313ac  5c 58 84 e5                                      str r5, [r4, #0x85c]
008313b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008313b4  00 30 94 e5                                      ldr r3, [r4]
008313b8  04 00 a0 e1                                      mov r0, r4
008313bc  14 10 94 e5                                      ldr r1, [r4, #0x14]
008313c0  0f e0 a0 e1                                      mov lr, pc
008313c4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008313c8  00 00 50 e3                                      cmp r0, #0
008313cc  00 50 a0 e1                                      mov r5, r0
008313d0  0c 00 84 e5                                      str r0, [r4, #0xc]
008313d4  9d ff ff 1a                                      bne #0x831250
008313d8  56 e7 ff eb                                      bl #0x82b138
008313dc  68 38 94 e5                                      ldr r3, [r4, #0x868]
008313e0  0f 27 02 e3                                      movw r2, #0x270f
008313e4  00 30 63 e0                                      rsb r3, r3, r0
008313e8  02 00 53 e1                                      cmp r3, r2
008313ec  0a ff ff da                                      ble #0x83101c
008313f0  00 30 94 e5                                      ldr r3, [r4]
008313f4  04 00 a0 e1                                      mov r0, r4
008313f8  0f e0 a0 e1                                      mov lr, pc
008313fc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00831400  00 10 a0 e1                                      mov r1, r0
00831404  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
00831408  00 00 8f e0                                      add r0, pc, r0
0083140c  dc e8 ff eb                                      bl #0x82b784
00831410  07 30 a0 e3                                      mov r3, #7
00831414  04 30 84 e5                                      str r3, [r4, #4]
00831418  60 58 84 e5                                      str r5, [r4, #0x860]
0083141c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831420  00 30 94 e5                                      ldr r3, [r4]
00831424  04 00 a0 e1                                      mov r0, r4
00831428  0f e0 a0 e1                                      mov lr, pc
0083142c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00831430  00 10 a0 e1                                      mov r1, r0
00831434  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
00831438  00 00 8f e0                                      add r0, pc, r0
0083143c  d0 e8 ff eb                                      bl #0x82b784
00831440  00 30 94 e5                                      ldr r3, [r4]
00831444  04 00 a0 e1                                      mov r0, r4
00831448  0f e0 a0 e1                                      mov lr, pc
0083144c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00831450  07 30 a0 e3                                      mov r3, #7
00831454  04 30 84 e5                                      str r3, [r4, #4]
00831458  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083145c  00 30 94 e5                                      ldr r3, [r4]
00831460  04 00 a0 e1                                      mov r0, r4
00831464  0f e0 a0 e1                                      mov lr, pc
00831468  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0083146c  00 10 a0 e1                                      mov r1, r0
00831470  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
00831474  00 00 8f e0                                      add r0, pc, r0
00831478  c1 e8 ff eb                                      bl #0x82b784
0083147c  00 30 94 e5                                      ldr r3, [r4]
00831480  04 00 a0 e1                                      mov r0, r4
00831484  0f e0 a0 e1                                      mov lr, pc
00831488  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0083148c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00831490  07 20 a0 e3                                      mov r2, #7
00831494  04 20 84 e5                                      str r2, [r4, #4]
00831498  03 00 a0 e1                                      mov r0, r3
0083149c  00 10 a0 e3                                      mov r1, #0
008314a0  00 30 93 e5                                      ldr r3, [r3]
008314a4  0f e0 a0 e1                                      mov lr, pc
008314a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008314ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
008314b0  00 30 94 e5                                      ldr r3, [r4]
008314b4  04 00 a0 e1                                      mov r0, r4
008314b8  0f e0 a0 e1                                      mov lr, pc
008314bc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008314c0  00 10 a0 e1                                      mov r1, r0
008314c4  58 00 9f e5                                      ldr r0, [pc, #0x58]
008314c8  00 00 8f e0                                      add r0, pc, r0
008314cc  da ff ff ea                                      b #0x83143c
; mapping-symbol data/literal pool
008314d0  8c be 0d 00 d4 be 0d 00 a0 a7 09 00 24 be 0d 00  .byte 0x8c, 0xbe, 0x0d, 0x00, 0xd4, 0xbe, 0x0d, 0x00, 0xa0, 0xa7, 0x09, 0x00, 0x24, 0xbe, 0x0d, 0x00
008314e0  4c b8 0d 00 e0 bd 0d 00 74 bd 0d 00 8c bd 0d 00  .byte 0x4c, 0xb8, 0x0d, 0x00, 0xe0, 0xbd, 0x0d, 0x00, 0x74, 0xbd, 0x0d, 0x00, 0x8c, 0xbd, 0x0d, 0x00
008314f0  e4 bb 0d 00 80 bc 0d 00 48 a5 09 00 60 bb 0d 00  .byte 0xe4, 0xbb, 0x0d, 0x00, 0x80, 0xbc, 0x0d, 0x00, 0x48, 0xa5, 0x09, 0x00, 0x60, 0xbb, 0x0d, 0x00
00831500  14 a5 09 00 54 bb 0d 00 64 bb 0d 00 98 ba 0d 00  .byte 0x14, 0xa5, 0x09, 0x00, 0x54, 0xbb, 0x0d, 0x00, 0x64, 0xbb, 0x0d, 0x00, 0x98, 0xba, 0x0d, 0x00
00831510  f0 a7 09 00 94 ba 0d 00 f8 b9 0d 00 c8 b9 0d 00  .byte 0xf0, 0xa7, 0x09, 0x00, 0x94, 0xba, 0x0d, 0x00, 0xf8, 0xb9, 0x0d, 0x00, 0xc8, 0xb9, 0x0d, 0x00
00831520  8c b9 0d 00 38 b9 0d 00                          .byte 0x8c, 0xb9, 0x0d, 0x00, 0x38, 0xb9, 0x0d, 0x00
