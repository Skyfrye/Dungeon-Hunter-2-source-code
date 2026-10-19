; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a0184, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket11GetAcceptIPEv
; demangled: LCXPlayerSocket::GetAcceptIP()
; decoder-mode: arm
008a0184  24 08 90 e5                                      ldr r0, [r0, #0x824]
008a0188  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a018c, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket13GetAcceptPortEv
; demangled: LCXPlayerSocket::GetAcceptPort()
; decoder-mode: arm
008a018c  28 08 90 e5                                      ldr r0, [r0, #0x828]
008a0190  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a0194, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket13SetAcceptPortEi
; demangled: LCXPlayerSocket::SetAcceptPort(int)
; decoder-mode: arm
008a0194  28 18 80 e5                                      str r1, [r0, #0x828]
008a0198  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a019c, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket9SetSocketEi
; demangled: LCXPlayerSocket::SetSocket(int)
; decoder-mode: arm
008a019c  08 10 80 e5                                      str r1, [r0, #8]
008a01a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a01a4, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket13GetSocketTypeEv
; demangled: LCXPlayerSocket::GetSocketType()
; decoder-mode: arm
008a01a4  20 08 90 e5                                      ldr r0, [r0, #0x820]
008a01a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a01ac, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket13SetSocketTypeEi
; demangled: LCXPlayerSocket::SetSocketType(int)
; decoder-mode: arm
008a01ac  20 18 80 e5                                      str r1, [r0, #0x820]
008a01b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a01b4, declared_size=64, range_size=64, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket6CancelEv
; demangled: LCXPlayerSocket::Cancel()
; decoder-mode: arm
008a01b4  10 40 2d e9                                      push {r4, lr}
008a01b8  04 30 90 e5                                      ldr r3, [r0, #4]
008a01bc  00 00 53 e3                                      cmp r3, #0
008a01c0  07 00 53 13                                      cmpne r3, #7
008a01c4  00 10 a0 13                                      movne r1, #0
008a01c8  01 10 a0 03                                      moveq r1, #1
008a01cc  07 00 00 0a                                      beq #0x8a01f0
008a01d0  06 00 53 e3                                      cmp r3, #6
008a01d4  05 00 00 0a                                      beq #0x8a01f0
008a01d8  08 30 a0 e3                                      mov r3, #8
008a01dc  04 30 80 e5                                      str r3, [r0, #4]
008a01e0  58 18 80 e5                                      str r1, [r0, #0x858]
008a01e4  00 30 90 e5                                      ldr r3, [r0]
008a01e8  0f e0 a0 e1                                      mov lr, pc
008a01ec  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008a01f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008a01f4, declared_size=44, range_size=44, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket12IsInProgressEv
; demangled: LCXPlayerSocket::IsInProgress()
; decoder-mode: arm
008a01f4  04 00 90 e5                                      ldr r0, [r0, #4]
008a01f8  00 00 50 e3                                      cmp r0, #0
008a01fc  07 00 50 13                                      cmpne r0, #7
008a0200  04 00 00 0a                                      beq #0x8a0218
008a0204  08 00 50 e3                                      cmp r0, #8
008a0208  02 00 00 0a                                      beq #0x8a0218
008a020c  06 00 50 e2                                      subs r0, r0, #6
008a0210  01 00 a0 13                                      movne r0, #1
008a0214  1e ff 2f e1                                      bx lr
008a0218  00 00 a0 e3                                      mov r0, #0
008a021c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a0220, declared_size=20, range_size=20, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket15IsErrorOccurredEv
; demangled: LCXPlayerSocket::IsErrorOccurred()
; decoder-mode: arm
008a0220  04 00 90 e5                                      ldr r0, [r0, #4]
008a0224  07 00 50 e3                                      cmp r0, #7
008a0228  00 00 a0 13                                      movne r0, #0
008a022c  01 00 a0 03                                      moveq r0, #1
008a0230  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a02c4, declared_size=56, range_size=56, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket5StartEv
; demangled: LCXPlayerSocket::Start()
; decoder-mode: arm
008a02c4  70 40 2d e9                                      push {r4, r5, r6, lr}
008a02c8  00 50 a0 e3                                      mov r5, #0
008a02cc  00 40 a0 e1                                      mov r4, r0
008a02d0  1c 58 80 e5                                      str r5, [r0, #0x81c]
008a02d4  05 10 a0 e1                                      mov r1, r5
008a02d8  1c 00 80 e2                                      add r0, r0, #0x1c
008a02dc  02 2b a0 e3                                      mov r2, #0x800
008a02e0  06 f3 ff eb                                      bl #0x89cf00
008a02e4  00 30 e0 e3                                      mvn r3, #0
008a02e8  08 30 84 e5                                      str r3, [r4, #8]
008a02ec  01 30 a0 e3                                      mov r3, #1
008a02f0  04 30 84 e5                                      str r3, [r4, #4]
008a02f4  0c 50 84 e5                                      str r5, [r4, #0xc]
008a02f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008a02fc, declared_size=24, range_size=24, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket11SetAcceptIPEPc
; demangled: LCXPlayerSocket::SetAcceptIP(char*)
; decoder-mode: arm
008a02fc  10 40 2d e9                                      push {r4, lr}
008a0300  00 40 a0 e1                                      mov r4, r0
008a0304  01 00 a0 e1                                      mov r0, r1
008a0308  03 f4 ff eb                                      bl #0x89d31c
008a030c  24 08 84 e5                                      str r0, [r4, #0x824]
008a0310  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008a0314, declared_size=168, range_size=168, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocketC1EPciP23LCXPlayerSocketObserver
; demangled: LCXPlayerSocket::LCXPlayerSocket(char*, int, LCXPlayerSocketObserver*)
; decoder-mode: arm
008a0314  98 c0 9f e5                                      ldr ip, [pc, #0x98]
008a0318  70 40 2d e9                                      push {r4, r5, r6, lr}
008a031c  94 e0 9f e5                                      ldr lr, [pc, #0x94]
008a0320  0c c0 8f e0                                      add ip, pc, ip
008a0324  00 40 a0 e1                                      mov r4, r0
008a0328  0e e0 9c e7                                      ldr lr, [ip, lr]
008a032c  82 0e 80 e2                                      add r0, r0, #0x820
008a0330  0c 00 80 e2                                      add r0, r0, #0xc
008a0334  08 e0 8e e2                                      add lr, lr, #8
008a0338  01 50 a0 e1                                      mov r5, r1
008a033c  10 20 84 e5                                      str r2, [r4, #0x10]
008a0340  18 30 84 e5                                      str r3, [r4, #0x18]
008a0344  00 e0 84 e5                                      str lr, [r4]
008a0348  3c 08 84 e5                                      str r0, [r4, #0x83c]
008a034c  40 08 84 e5                                      str r0, [r4, #0x840]
008a0350  10 10 a0 e3                                      mov r1, #0x10
008a0354  c8 c4 e9 eb                                      bl #0x31167c
008a0358  3c 38 94 e5                                      ldr r3, [r4, #0x83c]
008a035c  00 00 55 e3                                      cmp r5, #0
008a0360  00 20 a0 e3                                      mov r2, #0
008a0364  00 20 c3 e5                                      strb r2, [r3]
008a0368  14 50 84 05                                      streq r5, [r4, #0x14]
008a036c  02 00 00 0a                                      beq #0x8a037c
008a0370  05 00 a0 e1                                      mov r0, r5
008a0374  e8 f3 ff eb                                      bl #0x89d31c
008a0378  14 00 84 e5                                      str r0, [r4, #0x14]
008a037c  00 30 a0 e3                                      mov r3, #0
008a0380  00 20 e0 e3                                      mvn r2, #0
008a0384  08 20 84 e5                                      str r2, [r4, #8]
008a0388  54 38 84 e5                                      str r3, [r4, #0x854]
008a038c  0c 30 84 e5                                      str r3, [r4, #0xc]
008a0390  24 38 84 e5                                      str r3, [r4, #0x824]
008a0394  58 38 84 e5                                      str r3, [r4, #0x858]
008a0398  5c 38 84 e5                                      str r3, [r4, #0x85c]
008a039c  60 38 84 e5                                      str r3, [r4, #0x860]
008a03a0  64 38 84 e5                                      str r3, [r4, #0x864]
008a03a4  4c 38 84 e5                                      str r3, [r4, #0x84c]
008a03a8  50 38 84 e5                                      str r3, [r4, #0x850]
008a03ac  04 00 a0 e1                                      mov r0, r4
008a03b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a03b4  70 47 0f 00 24 3f 00 00                          .byte 0x70, 0x47, 0x0f, 0x00, 0x24, 0x3f, 0x00, 0x00

; FUNCTION 0x008a03bc, declared_size=168, range_size=168, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocketC2EPciP23LCXPlayerSocketObserver
; demangled: LCXPlayerSocket::LCXPlayerSocket(char*, int, LCXPlayerSocketObserver*)
; decoder-mode: arm
008a03bc  98 c0 9f e5                                      ldr ip, [pc, #0x98]
008a03c0  70 40 2d e9                                      push {r4, r5, r6, lr}
008a03c4  94 e0 9f e5                                      ldr lr, [pc, #0x94]
008a03c8  0c c0 8f e0                                      add ip, pc, ip
008a03cc  00 40 a0 e1                                      mov r4, r0
008a03d0  0e e0 9c e7                                      ldr lr, [ip, lr]
008a03d4  82 0e 80 e2                                      add r0, r0, #0x820
008a03d8  0c 00 80 e2                                      add r0, r0, #0xc
008a03dc  08 e0 8e e2                                      add lr, lr, #8
008a03e0  01 50 a0 e1                                      mov r5, r1
008a03e4  10 20 84 e5                                      str r2, [r4, #0x10]
008a03e8  18 30 84 e5                                      str r3, [r4, #0x18]
008a03ec  00 e0 84 e5                                      str lr, [r4]
008a03f0  3c 08 84 e5                                      str r0, [r4, #0x83c]
008a03f4  40 08 84 e5                                      str r0, [r4, #0x840]
008a03f8  10 10 a0 e3                                      mov r1, #0x10
008a03fc  9e c4 e9 eb                                      bl #0x31167c
008a0400  3c 38 94 e5                                      ldr r3, [r4, #0x83c]
008a0404  00 00 55 e3                                      cmp r5, #0
008a0408  00 20 a0 e3                                      mov r2, #0
008a040c  00 20 c3 e5                                      strb r2, [r3]
008a0410  14 50 84 05                                      streq r5, [r4, #0x14]
008a0414  02 00 00 0a                                      beq #0x8a0424
008a0418  05 00 a0 e1                                      mov r0, r5
008a041c  be f3 ff eb                                      bl #0x89d31c
008a0420  14 00 84 e5                                      str r0, [r4, #0x14]
008a0424  00 30 a0 e3                                      mov r3, #0
008a0428  00 20 e0 e3                                      mvn r2, #0
008a042c  08 20 84 e5                                      str r2, [r4, #8]
008a0430  54 38 84 e5                                      str r3, [r4, #0x854]
008a0434  0c 30 84 e5                                      str r3, [r4, #0xc]
008a0438  24 38 84 e5                                      str r3, [r4, #0x824]
008a043c  58 38 84 e5                                      str r3, [r4, #0x858]
008a0440  5c 38 84 e5                                      str r3, [r4, #0x85c]
008a0444  60 38 84 e5                                      str r3, [r4, #0x860]
008a0448  64 38 84 e5                                      str r3, [r4, #0x864]
008a044c  4c 38 84 e5                                      str r3, [r4, #0x84c]
008a0450  50 38 84 e5                                      str r3, [r4, #0x850]
008a0454  04 00 a0 e1                                      mov r0, r4
008a0458  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a045c  c8 46 0f 00 24 3f 00 00                          .byte 0xc8, 0x46, 0x0f, 0x00, 0x24, 0x3f, 0x00, 0x00

; FUNCTION 0x008a0464, declared_size=156, range_size=156, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocketD1Ev
; demangled: LCXPlayerSocket::~LCXPlayerSocket()
; decoder-mode: arm
008a0464  10 40 2d e9                                      push {r4, lr}
008a0468  88 30 9f e5                                      ldr r3, [pc, #0x88]
008a046c  88 20 9f e5                                      ldr r2, [pc, #0x88]
008a0470  00 40 a0 e1                                      mov r4, r0
008a0474  03 30 8f e0                                      add r3, pc, r3
008a0478  24 08 90 e5                                      ldr r0, [r0, #0x824]
008a047c  02 20 93 e7                                      ldr r2, [r3, r2]
008a0480  00 00 50 e3                                      cmp r0, #0
008a0484  08 20 82 e2                                      add r2, r2, #8
008a0488  00 20 84 e5                                      str r2, [r4]
008a048c  02 00 00 0a                                      beq #0x8a049c
008a0490  08 b7 e9 eb                                      bl #0x30e0b8
008a0494  00 30 a0 e3                                      mov r3, #0
008a0498  24 38 84 e5                                      str r3, [r4, #0x824]
008a049c  14 00 94 e5                                      ldr r0, [r4, #0x14]
008a04a0  00 00 50 e3                                      cmp r0, #0
008a04a4  02 00 00 0a                                      beq #0x8a04b4
008a04a8  02 b7 e9 eb                                      bl #0x30e0b8
008a04ac  00 30 a0 e3                                      mov r3, #0
008a04b0  14 30 84 e5                                      str r3, [r4, #0x14]
008a04b4  82 3e 84 e2                                      add r3, r4, #0x820
008a04b8  0c 30 83 e2                                      add r3, r3, #0xc
008a04bc  14 00 93 e5                                      ldr r0, [r3, #0x14]
008a04c0  03 00 50 e1                                      cmp r0, r3
008a04c4  06 00 00 0a                                      beq #0x8a04e4
008a04c8  00 00 50 e3                                      cmp r0, #0
008a04cc  04 00 00 0a                                      beq #0x8a04e4
008a04d0  2c 18 94 e5                                      ldr r1, [r4, #0x82c]
008a04d4  01 10 60 e0                                      rsb r1, r0, r1
008a04d8  80 00 51 e3                                      cmp r1, #0x80
008a04dc  02 00 00 8a                                      bhi #0x8a04ec
008a04e0  94 77 00 eb                                      bl #0x8be338
008a04e4  04 00 a0 e1                                      mov r0, r4
008a04e8  10 80 bd e8                                      pop {r4, pc}
008a04ec  6f b7 e9 eb                                      bl #0x30e2b0
008a04f0  04 00 a0 e1                                      mov r0, r4
008a04f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008a04f8  1c 46 0f 00 24 3f 00 00                          .byte 0x1c, 0x46, 0x0f, 0x00, 0x24, 0x3f, 0x00, 0x00

; FUNCTION 0x008a0500, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocketD0Ev
; demangled: LCXPlayerSocket::~LCXPlayerSocket()
; decoder-mode: arm
008a0500  10 40 2d e9                                      push {r4, lr}
008a0504  00 40 a0 e1                                      mov r4, r0
008a0508  d5 ff ff eb                                      bl #0x8a0464
008a050c  04 00 a0 e1                                      mov r0, r4
008a0510  66 b7 e9 eb                                      bl #0x30e2b0
008a0514  04 00 a0 e1                                      mov r0, r4
008a0518  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008a051c, declared_size=156, range_size=156, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocketD2Ev
; demangled: LCXPlayerSocket::~LCXPlayerSocket()
; decoder-mode: arm
008a051c  10 40 2d e9                                      push {r4, lr}
008a0520  88 30 9f e5                                      ldr r3, [pc, #0x88]
008a0524  88 20 9f e5                                      ldr r2, [pc, #0x88]
008a0528  00 40 a0 e1                                      mov r4, r0
008a052c  03 30 8f e0                                      add r3, pc, r3
008a0530  24 08 90 e5                                      ldr r0, [r0, #0x824]
008a0534  02 20 93 e7                                      ldr r2, [r3, r2]
008a0538  00 00 50 e3                                      cmp r0, #0
008a053c  08 20 82 e2                                      add r2, r2, #8
008a0540  00 20 84 e5                                      str r2, [r4]
008a0544  02 00 00 0a                                      beq #0x8a0554
008a0548  da b6 e9 eb                                      bl #0x30e0b8
008a054c  00 30 a0 e3                                      mov r3, #0
008a0550  24 38 84 e5                                      str r3, [r4, #0x824]
008a0554  14 00 94 e5                                      ldr r0, [r4, #0x14]
008a0558  00 00 50 e3                                      cmp r0, #0
008a055c  02 00 00 0a                                      beq #0x8a056c
008a0560  d4 b6 e9 eb                                      bl #0x30e0b8
008a0564  00 30 a0 e3                                      mov r3, #0
008a0568  14 30 84 e5                                      str r3, [r4, #0x14]
008a056c  82 3e 84 e2                                      add r3, r4, #0x820
008a0570  0c 30 83 e2                                      add r3, r3, #0xc
008a0574  14 00 93 e5                                      ldr r0, [r3, #0x14]
008a0578  03 00 50 e1                                      cmp r0, r3
008a057c  06 00 00 0a                                      beq #0x8a059c
008a0580  00 00 50 e3                                      cmp r0, #0
008a0584  04 00 00 0a                                      beq #0x8a059c
008a0588  2c 18 94 e5                                      ldr r1, [r4, #0x82c]
008a058c  01 10 60 e0                                      rsb r1, r0, r1
008a0590  80 00 51 e3                                      cmp r1, #0x80
008a0594  02 00 00 8a                                      bhi #0x8a05a4
008a0598  66 77 00 eb                                      bl #0x8be338
008a059c  04 00 a0 e1                                      mov r0, r4
008a05a0  10 80 bd e8                                      pop {r4, pc}
008a05a4  41 b7 e9 eb                                      bl #0x30e2b0
008a05a8  04 00 a0 e1                                      mov r0, r4
008a05ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008a05b0  64 45 0f 00 24 3f 00 00                          .byte 0x64, 0x45, 0x0f, 0x00, 0x24, 0x3f, 0x00, 0x00

; FUNCTION 0x008a05b8, declared_size=852, range_size=852, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket15ParseHttpHeaderEPc
; demangled: LCXPlayerSocket::ParseHttpHeader(char*)
; decoder-mode: arm
008a05b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008a05bc  3c 43 9f e5                                      ldr r4, [pc, #0x33c]
008a05c0  3c 93 9f e5                                      ldr sb, [pc, #0x33c]
008a05c4  34 d0 4d e2                                      sub sp, sp, #0x34
008a05c8  04 40 8f e0                                      add r4, pc, r4
008a05cc  09 30 94 e7                                      ldr r3, [r4, sb]
008a05d0  00 80 a0 e1                                      mov r8, r0
008a05d4  01 00 a0 e1                                      mov r0, r1
008a05d8  00 30 93 e5                                      ldr r3, [r3]
008a05dc  01 50 a0 e1                                      mov r5, r1
008a05e0  2c 30 8d e5                                      str r3, [sp, #0x2c]
008a05e4  ab f1 ff eb                                      bl #0x89cc98
008a05e8  01 60 80 e2                                      add r6, r0, #1
008a05ec  06 00 a0 e1                                      mov r0, r6
008a05f0  b6 b6 e9 eb                                      bl #0x30e0d0
008a05f4  06 20 a0 e1                                      mov r2, r6
008a05f8  00 70 a0 e1                                      mov r7, r0
008a05fc  00 10 a0 e3                                      mov r1, #0
008a0600  3e f2 ff eb                                      bl #0x89cf00
008a0604  07 10 a0 e1                                      mov r1, r7
008a0608  05 00 a0 e1                                      mov r0, r5
008a060c  00 f1 ff eb                                      bl #0x89ca14
008a0610  3c 38 98 e5                                      ldr r3, [r8, #0x83c]
008a0614  40 28 98 e5                                      ldr r2, [r8, #0x840]
008a0618  02 10 53 e0                                      subs r1, r3, r2
008a061c  4a 00 00 1a                                      bne #0x8a074c
008a0620  00 50 a0 e3                                      mov r5, #0
008a0624  05 a0 a0 e1                                      mov sl, r5
008a0628  00 b0 e0 e3                                      mvn fp, #0
008a062c  05 00 a0 e1                                      mov r0, r5
008a0630  a6 b6 e9 eb                                      bl #0x30e0d0
008a0634  00 60 a0 e1                                      mov r6, r0
008a0638  05 00 a0 e1                                      mov r0, r5
008a063c  a3 b6 e9 eb                                      bl #0x30e0d0
008a0640  00 10 a0 e3                                      mov r1, #0
008a0644  00 50 a0 e1                                      mov r5, r0
008a0648  0a 20 a0 e1                                      mov r2, sl
008a064c  06 00 a0 e1                                      mov r0, r6
008a0650  2a f2 ff eb                                      bl #0x89cf00
008a0654  05 00 a0 e1                                      mov r0, r5
008a0658  0a 20 a0 e1                                      mov r2, sl
008a065c  00 10 a0 e3                                      mov r1, #0
008a0660  26 f2 ff eb                                      bl #0x89cf00
008a0664  0b 20 a0 e1                                      mov r2, fp
008a0668  40 18 98 e5                                      ldr r1, [r8, #0x840]
008a066c  06 00 a0 e1                                      mov r0, r6
008a0670  1d f2 ff eb                                      bl #0x89ceec
008a0674  14 80 8d e2                                      add r8, sp, #0x14
008a0678  06 00 a0 e1                                      mov r0, r6
008a067c  05 10 a0 e1                                      mov r1, r5
008a0680  e3 f0 ff eb                                      bl #0x89ca14
008a0684  05 10 a0 e1                                      mov r1, r5
008a0688  10 20 8d e2                                      add r2, sp, #0x10
008a068c  08 00 a0 e1                                      mov r0, r8
008a0690  95 ce e9 eb                                      bl #0x3140ec
008a0694  07 00 a0 e1                                      mov r0, r7
008a0698  ed b5 e9 eb                                      bl #0x30de54
008a069c  28 30 9d e5                                      ldr r3, [sp, #0x28]
008a06a0  24 20 9d e5                                      ldr r2, [sp, #0x24]
008a06a4  03 10 a0 e1                                      mov r1, r3
008a06a8  03 c0 52 e0                                      subs ip, r2, r3
008a06ac  22 00 00 1a                                      bne #0x8a073c
008a06b0  00 00 50 e3                                      cmp r0, #0
008a06b4  00 b0 a0 01                                      moveq fp, r0
008a06b8  21 00 00 1a                                      bne #0x8a0744
008a06bc  00 00 57 e3                                      cmp r7, #0
008a06c0  01 00 00 0a                                      beq #0x8a06cc
008a06c4  07 00 a0 e1                                      mov r0, r7
008a06c8  7a b6 e9 eb                                      bl #0x30e0b8
008a06cc  00 00 56 e3                                      cmp r6, #0
008a06d0  01 00 00 0a                                      beq #0x8a06dc
008a06d4  06 00 a0 e1                                      mov r0, r6
008a06d8  76 b6 e9 eb                                      bl #0x30e0b8
008a06dc  00 00 55 e3                                      cmp r5, #0
008a06e0  01 00 00 0a                                      beq #0x8a06ec
008a06e4  05 00 a0 e1                                      mov r0, r5
008a06e8  72 b6 e9 eb                                      bl #0x30e0b8
008a06ec  28 00 9d e5                                      ldr r0, [sp, #0x28]
008a06f0  08 00 50 e1                                      cmp r0, r8
008a06f4  06 00 00 0a                                      beq #0x8a0714
008a06f8  00 00 50 e3                                      cmp r0, #0
008a06fc  04 00 00 0a                                      beq #0x8a0714
008a0700  14 10 9d e5                                      ldr r1, [sp, #0x14]
008a0704  01 10 60 e0                                      rsb r1, r0, r1
008a0708  80 00 51 e3                                      cmp r1, #0x80
008a070c  08 00 00 8a                                      bhi #0x8a0734
008a0710  08 77 00 eb                                      bl #0x8be338
008a0714  09 30 94 e7                                      ldr r3, [r4, sb]
008a0718  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
008a071c  0b 00 a0 e1                                      mov r0, fp
008a0720  00 30 93 e5                                      ldr r3, [r3]
008a0724  03 00 52 e1                                      cmp r2, r3
008a0728  73 00 00 1a                                      bne #0x8a08fc
008a072c  34 d0 8d e2                                      add sp, sp, #0x34
008a0730  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008a0734  dd b6 e9 eb                                      bl #0x30e2b0
008a0738  f5 ff ff ea                                      b #0x8a0714
008a073c  0c 00 50 e1                                      cmp r0, ip
008a0740  17 00 00 9a                                      bls #0x8a07a4
008a0744  00 b0 e0 e3                                      mvn fp, #0
008a0748  db ff ff ea                                      b #0x8a06bc
008a074c  03 00 51 e3                                      cmp r1, #3
008a0750  b2 ff ff 9a                                      bls #0x8a0620
008a0754  02 00 53 e1                                      cmp r3, r2
008a0758  0a 00 00 0a                                      beq #0x8a0788
008a075c  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
008a0760  01 e0 82 e2                                      add lr, r2, #1
008a0764  01 10 8f e0                                      add r1, pc, r1
008a0768  04 50 81 e2                                      add r5, r1, #4
008a076c  02 60 81 e2                                      add r6, r1, #2
008a0770  d1 10 5e e1                                      ldrsb r1, [lr, #-1]
008a0774  0d 00 51 e3                                      cmp r1, #0xd
008a0778  3d 00 00 0a                                      beq #0x8a0874
008a077c  0e 00 53 e1                                      cmp r3, lr
008a0780  01 e0 8e e2                                      add lr, lr, #1
008a0784  f9 ff ff 1a                                      bne #0x8a0770
008a0788  03 b0 a0 e1                                      mov fp, r3
008a078c  0b 00 53 e1                                      cmp r3, fp
008a0790  a2 ff ff 0a                                      beq #0x8a0620
008a0794  0b b0 62 e0                                      rsb fp, r2, fp
008a0798  01 a0 8b e2                                      add sl, fp, #1
008a079c  0a 50 a0 e1                                      mov r5, sl
008a07a0  a1 ff ff ea                                      b #0x8a062c
008a07a4  00 b0 87 e0                                      add fp, r7, r0
008a07a8  03 00 52 e1                                      cmp r2, r3
008a07ac  0b 00 57 11                                      cmpne r7, fp
008a07b0  1a 00 00 0a                                      beq #0x8a0820
008a07b4  01 00 87 e2                                      add r0, r7, #1
008a07b8  00 00 5b e1                                      cmp fp, r0
008a07bc  43 00 00 0a                                      beq #0x8a08d0
008a07c0  02 00 87 e2                                      add r0, r7, #2
008a07c4  04 30 8d e5                                      str r3, [sp, #4]
008a07c8  0c 00 8d e5                                      str r0, [sp, #0xc]
008a07cc  04 00 9d e5                                      ldr r0, [sp, #4]
008a07d0  01 10 83 e2                                      add r1, r3, #1
008a07d4  05 a0 a0 e1                                      mov sl, r5
008a07d8  00 00 52 e1                                      cmp r2, r0
008a07dc  08 30 8d e5                                      str r3, [sp, #8]
008a07e0  01 50 a0 e1                                      mov r5, r1
008a07e4  0a 00 00 0a                                      beq #0x8a0814
008a07e8  d1 10 55 e1                                      ldrsb r1, [r5, #-1]
008a07ec  d0 30 d7 e1                                      ldrsb r3, [r7]
008a07f0  03 00 51 e1                                      cmp r1, r3
008a07f4  0d 00 00 0a                                      beq #0x8a0830
008a07f8  04 30 9d e5                                      ldr r3, [sp, #4]
008a07fc  01 50 85 e2                                      add r5, r5, #1
008a0800  01 30 83 e2                                      add r3, r3, #1
008a0804  04 30 8d e5                                      str r3, [sp, #4]
008a0808  04 00 9d e5                                      ldr r0, [sp, #4]
008a080c  00 00 52 e1                                      cmp r2, r0
008a0810  f4 ff ff 1a                                      bne #0x8a07e8
008a0814  08 30 9d e5                                      ldr r3, [sp, #8]
008a0818  0a 50 a0 e1                                      mov r5, sl
008a081c  02 10 a0 e1                                      mov r1, r2
008a0820  01 00 52 e1                                      cmp r2, r1
008a0824  01 b0 63 10                                      rsbne fp, r3, r1
008a0828  00 b0 e0 03                                      mvneq fp, #0
008a082c  a2 ff ff ea                                      b #0x8a06bc
008a0830  05 00 52 e1                                      cmp r2, r5
008a0834  05 10 a0 e1                                      mov r1, r5
008a0838  f5 ff ff 0a                                      beq #0x8a0814
008a083c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008a0840  d0 c0 d1 e1                                      ldrsb ip, [r1]
008a0844  d1 00 53 e1                                      ldrsb r0, [r3, #-1]
008a0848  00 00 5c e1                                      cmp ip, r0
008a084c  e9 ff ff 1a                                      bne #0x8a07f8
008a0850  0b 00 53 e1                                      cmp r3, fp
008a0854  17 00 00 0a                                      beq #0x8a08b8
008a0858  01 10 81 e2                                      add r1, r1, #1
008a085c  02 00 51 e1                                      cmp r1, r2
008a0860  01 30 83 e2                                      add r3, r3, #1
008a0864  f5 ff ff 1a                                      bne #0x8a0840
008a0868  08 30 9d e5                                      ldr r3, [sp, #8]
008a086c  0a 50 a0 e1                                      mov r5, sl
008a0870  ea ff ff ea                                      b #0x8a0820
008a0874  0e 00 53 e1                                      cmp r3, lr
008a0878  0e b0 a0 e1                                      mov fp, lr
008a087c  c1 ff ff 0a                                      beq #0x8a0788
008a0880  06 10 a0 e1                                      mov r1, r6
008a0884  05 00 00 ea                                      b #0x8a08a0
008a0888  05 00 51 e1                                      cmp r1, r5
008a088c  0d 00 00 0a                                      beq #0x8a08c8
008a0890  01 b0 8b e2                                      add fp, fp, #1
008a0894  03 00 5b e1                                      cmp fp, r3
008a0898  01 10 81 e2                                      add r1, r1, #1
008a089c  ba ff ff 0a                                      beq #0x8a078c
008a08a0  d0 c0 db e1                                      ldrsb ip, [fp]
008a08a4  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a08a8  00 00 5c e1                                      cmp ip, r0
008a08ac  f5 ff ff 0a                                      beq #0x8a0888
008a08b0  01 e0 8e e2                                      add lr, lr, #1
008a08b4  ad ff ff ea                                      b #0x8a0770
008a08b8  08 30 9d e5                                      ldr r3, [sp, #8]
008a08bc  0a 50 a0 e1                                      mov r5, sl
008a08c0  04 10 9d e5                                      ldr r1, [sp, #4]
008a08c4  d5 ff ff ea                                      b #0x8a0820
008a08c8  01 b0 4e e2                                      sub fp, lr, #1
008a08cc  ae ff ff ea                                      b #0x8a078c
008a08d0  d0 00 d3 e1                                      ldrsb r0, [r3]
008a08d4  d0 c0 d7 e1                                      ldrsb ip, [r7]
008a08d8  0c 00 50 e1                                      cmp r0, ip
008a08dc  cf ff ff 0a                                      beq #0x8a0820
008a08e0  01 10 81 e2                                      add r1, r1, #1
008a08e4  02 00 51 e1                                      cmp r1, r2
008a08e8  cc ff ff 0a                                      beq #0x8a0820
008a08ec  d0 00 d1 e1                                      ldrsb r0, [r1]
008a08f0  0c 00 50 e1                                      cmp r0, ip
008a08f4  f9 ff ff 1a                                      bne #0x8a08e0
008a08f8  c8 ff ff ea                                      b #0x8a0820
008a08fc  83 b6 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008a0900  c8 44 0f 00 ac 40 00 00 fc c1 06 00              .byte 0xc8, 0x44, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0xc1, 0x06, 0x00

; FUNCTION 0x008a090c, declared_size=484, range_size=484, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket16RemoveHttpHeaderEv
; demangled: LCXPlayerSocket::RemoveHttpHeader()
; decoder-mode: arm
008a090c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008a0910  c4 41 9f e5                                      ldr r4, [pc, #0x1c4]
008a0914  c4 51 9f e5                                      ldr r5, [pc, #0x1c4]
008a0918  3c 38 90 e5                                      ldr r3, [r0, #0x83c]
008a091c  04 40 8f e0                                      add r4, pc, r4
008a0920  05 10 94 e7                                      ldr r1, [r4, r5]
008a0924  40 28 90 e5                                      ldr r2, [r0, #0x840]
008a0928  20 d0 4d e2                                      sub sp, sp, #0x20
008a092c  00 10 91 e5                                      ldr r1, [r1]
008a0930  00 80 a0 e1                                      mov r8, r0
008a0934  02 00 53 e0                                      subs r0, r3, r2
008a0938  1c 10 8d e5                                      str r1, [sp, #0x1c]
008a093c  06 00 00 1a                                      bne #0x8a095c
008a0940  05 30 94 e7                                      ldr r3, [r4, r5]
008a0944  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008a0948  00 30 93 e5                                      ldr r3, [r3]
008a094c  03 00 52 e1                                      cmp r2, r3
008a0950  60 00 00 1a                                      bne #0x8a0ad8
008a0954  20 d0 8d e2                                      add sp, sp, #0x20
008a0958  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008a095c  03 00 50 e3                                      cmp r0, #3
008a0960  f6 ff ff 9a                                      bls #0x8a0940
008a0964  02 00 53 e1                                      cmp r3, r2
008a0968  34 00 00 1a                                      bne #0x8a0a40
008a096c  03 70 a0 e1                                      mov r7, r3
008a0970  07 00 53 e1                                      cmp r3, r7
008a0974  f1 ff ff 0a                                      beq #0x8a0940
008a0978  07 70 62 e0                                      rsb r7, r2, r7
008a097c  00 00 57 e3                                      cmp r7, #0
008a0980  ee ff ff da                                      ble #0x8a0940
008a0984  58 01 9f e5                                      ldr r0, [pc, #0x158]
008a0988  04 60 8d e2                                      add r6, sp, #4
008a098c  00 00 8f e0                                      add r0, pc, r0
008a0990  c0 f0 ff eb                                      bl #0x89cc98
008a0994  3c 98 98 e5                                      ldr sb, [r8, #0x83c]
008a0998  40 38 98 e5                                      ldr r3, [r8, #0x840]
008a099c  07 00 80 e0                                      add r0, r0, r7
008a09a0  82 8e 88 e2                                      add r8, r8, #0x820
008a09a4  09 90 63 e0                                      rsb sb, r3, sb
008a09a8  09 00 50 e1                                      cmp r0, sb
008a09ac  0c 80 88 e2                                      add r8, r8, #0xc
008a09b0  14 60 8d e5                                      str r6, [sp, #0x14]
008a09b4  18 60 8d e5                                      str r6, [sp, #0x18]
008a09b8  2f 00 00 8a                                      bhi #0x8a0a7c
008a09bc  00 a0 83 e0                                      add sl, r3, r0
008a09c0  09 90 83 e0                                      add sb, r3, sb
008a09c4  09 70 6a e0                                      rsb r7, sl, sb
008a09c8  06 00 a0 e1                                      mov r0, r6
008a09cc  01 10 87 e2                                      add r1, r7, #1
008a09d0  29 c3 e9 eb                                      bl #0x31167c
008a09d4  09 00 5a e1                                      cmp sl, sb
008a09d8  18 00 9d e5                                      ldr r0, [sp, #0x18]
008a09dc  03 00 00 0a                                      beq #0x8a09f0
008a09e0  0a 10 a0 e1                                      mov r1, sl
008a09e4  07 20 a0 e1                                      mov r2, r7
008a09e8  9e b7 e9 eb                                      bl #0x30e868
008a09ec  07 00 80 e0                                      add r0, r0, r7
008a09f0  00 30 a0 e3                                      mov r3, #0
008a09f4  14 00 8d e5                                      str r0, [sp, #0x14]
008a09f8  00 30 c0 e5                                      strb r3, [r0]
008a09fc  06 00 58 e1                                      cmp r8, r6
008a0a00  03 00 00 0a                                      beq #0x8a0a14
008a0a04  08 00 a0 e1                                      mov r0, r8
008a0a08  18 10 9d e5                                      ldr r1, [sp, #0x18]
008a0a0c  14 20 9d e5                                      ldr r2, [sp, #0x14]
008a0a10  f2 bf e9 eb                                      bl #0x3109e0
008a0a14  18 00 9d e5                                      ldr r0, [sp, #0x18]
008a0a18  06 00 50 e1                                      cmp r0, r6
008a0a1c  c7 ff ff 0a                                      beq #0x8a0940
008a0a20  00 00 50 e3                                      cmp r0, #0
008a0a24  c5 ff ff 0a                                      beq #0x8a0940
008a0a28  04 10 9d e5                                      ldr r1, [sp, #4]
008a0a2c  01 10 60 e0                                      rsb r1, r0, r1
008a0a30  80 00 51 e3                                      cmp r1, #0x80
008a0a34  0e 00 00 8a                                      bhi #0x8a0a74
008a0a38  3e 76 00 eb                                      bl #0x8be338
008a0a3c  bf ff ff ea                                      b #0x8a0940
008a0a40  a0 90 9f e5                                      ldr sb, [pc, #0xa0]
008a0a44  01 60 82 e2                                      add r6, r2, #1
008a0a48  09 90 8f e0                                      add sb, pc, sb
008a0a4c  04 a0 89 e2                                      add sl, sb, #4
008a0a50  02 90 89 e2                                      add sb, sb, #2
008a0a54  d1 10 56 e1                                      ldrsb r1, [r6, #-1]
008a0a58  0d 00 51 e3                                      cmp r1, #0xd
008a0a5c  0a 00 00 0a                                      beq #0x8a0a8c
008a0a60  03 00 56 e1                                      cmp r6, r3
008a0a64  06 70 a0 e1                                      mov r7, r6
008a0a68  01 60 86 e2                                      add r6, r6, #1
008a0a6c  f8 ff ff 1a                                      bne #0x8a0a54
008a0a70  be ff ff ea                                      b #0x8a0970
008a0a74  0d b6 e9 eb                                      bl #0x30e2b0
008a0a78  b0 ff ff ea                                      b #0x8a0940
008a0a7c  68 00 9f e5                                      ldr r0, [pc, #0x68]
008a0a80  00 00 8f e0                                      add r0, pc, r0
008a0a84  27 76 00 eb                                      bl #0x8be328
008a0a88  db ff ff ea                                      b #0x8a09fc
008a0a8c  06 00 53 e1                                      cmp r3, r6
008a0a90  06 70 a0 e1                                      mov r7, r6
008a0a94  b4 ff ff 0a                                      beq #0x8a096c
008a0a98  09 10 a0 e1                                      mov r1, sb
008a0a9c  05 00 00 ea                                      b #0x8a0ab8
008a0aa0  0a 00 51 e1                                      cmp r1, sl
008a0aa4  09 00 00 0a                                      beq #0x8a0ad0
008a0aa8  01 70 87 e2                                      add r7, r7, #1
008a0aac  03 00 57 e1                                      cmp r7, r3
008a0ab0  01 10 81 e2                                      add r1, r1, #1
008a0ab4  ad ff ff 0a                                      beq #0x8a0970
008a0ab8  d0 c0 d7 e1                                      ldrsb ip, [r7]
008a0abc  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a0ac0  00 00 5c e1                                      cmp ip, r0
008a0ac4  f5 ff ff 0a                                      beq #0x8a0aa0
008a0ac8  01 60 86 e2                                      add r6, r6, #1
008a0acc  e0 ff ff ea                                      b #0x8a0a54
008a0ad0  01 70 46 e2                                      sub r7, r6, #1
008a0ad4  a5 ff ff ea                                      b #0x8a0970
008a0ad8  0c b6 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008a0adc  74 41 0f 00 ac 40 00 00 d4 bf 06 00 18 bf 06 00  .byte 0x74, 0x41, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0xbf, 0x06, 0x00, 0x18, 0xbf, 0x06, 0x00
008a0aec  d8 d9 01 00                                      .byte 0xd8, 0xd9, 0x01, 0x00

; FUNCTION 0x008a0af0, declared_size=2628, range_size=2628, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket19ParseChunkedContentEv
; demangled: LCXPlayerSocket::ParseChunkedContent()
; decoder-mode: arm
008a0af0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008a0af4  c0 19 9f e5                                      ldr r1, [pc, #0x9c0]
008a0af8  c0 29 9f e5                                      ldr r2, [pc, #0x9c0]
008a0afc  45 df 4d e2                                      sub sp, sp, #0x114
008a0b00  01 10 8f e0                                      add r1, pc, r1
008a0b04  10 00 8d e5                                      str r0, [sp, #0x10]
008a0b08  2c 10 8d e5                                      str r1, [sp, #0x2c]
008a0b0c  3c 20 8d e5                                      str r2, [sp, #0x3c]
008a0b10  02 30 91 e7                                      ldr r3, [r1, r2]
008a0b14  40 58 90 e5                                      ldr r5, [r0, #0x840]
008a0b18  3c 68 90 e5                                      ldr r6, [r0, #0x83c]
008a0b1c  00 30 93 e5                                      ldr r3, [r3]
008a0b20  f4 00 8d e2                                      add r0, sp, #0xf4
008a0b24  06 40 65 e0                                      rsb r4, r5, r6
008a0b28  01 10 84 e2                                      add r1, r4, #1
008a0b2c  34 00 8d e5                                      str r0, [sp, #0x34]
008a0b30  04 01 8d e5                                      str r0, [sp, #0x104]
008a0b34  08 01 8d e5                                      str r0, [sp, #0x108]
008a0b38  0c 31 8d e5                                      str r3, [sp, #0x10c]
008a0b3c  ce c2 e9 eb                                      bl #0x31167c
008a0b40  06 00 55 e1                                      cmp r5, r6
008a0b44  08 01 9d e5                                      ldr r0, [sp, #0x108]
008a0b48  03 00 00 0a                                      beq #0x8a0b5c
008a0b4c  05 10 a0 e1                                      mov r1, r5
008a0b50  04 20 a0 e1                                      mov r2, r4
008a0b54  43 b7 e9 eb                                      bl #0x30e868
008a0b58  04 00 80 e0                                      add r0, r0, r4
008a0b5c  10 10 9d e5                                      ldr r1, [sp, #0x10]
008a0b60  5c 49 9f e5                                      ldr r4, [pc, #0x95c]
008a0b64  04 01 8d e5                                      str r0, [sp, #0x104]
008a0b68  82 3e 81 e2                                      add r3, r1, #0x820
008a0b6c  0c 30 83 e2                                      add r3, r3, #0xc
008a0b70  1c 30 8d e5                                      str r3, [sp, #0x1c]
008a0b74  00 30 a0 e3                                      mov r3, #0
008a0b78  04 40 8f e0                                      add r4, pc, r4
008a0b7c  00 30 c0 e5                                      strb r3, [r0]
008a0b80  04 10 a0 e1                                      mov r1, r4
008a0b84  dc 30 8d e2                                      add r3, sp, #0xdc
008a0b88  04 20 a0 e1                                      mov r2, r4
008a0b8c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
008a0b90  0c 30 8d e5                                      str r3, [sp, #0xc]
008a0b94  91 bf e9 eb                                      bl #0x3109e0
008a0b98  c4 00 8d e2                                      add r0, sp, #0xc4
008a0b9c  18 00 8d e5                                      str r0, [sp, #0x18]
008a0ba0  04 10 a0 e1                                      mov r1, r4
008a0ba4  48 20 8d e2                                      add r2, sp, #0x48
008a0ba8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008a0bac  4e cd e9 eb                                      bl #0x3140ec
008a0bb0  44 20 8d e2                                      add r2, sp, #0x44
008a0bb4  04 10 a0 e1                                      mov r1, r4
008a0bb8  18 00 9d e5                                      ldr r0, [sp, #0x18]
008a0bbc  4a cd e9 eb                                      bl #0x3140ec
008a0bc0  00 09 9f e5                                      ldr r0, [pc, #0x900]
008a0bc4  08 11 9d e5                                      ldr r1, [sp, #0x108]
008a0bc8  00 00 8f e0                                      add r0, pc, r0
008a0bcc  cc ed ff eb                                      bl #0x89c304
008a0bd0  04 31 9d e5                                      ldr r3, [sp, #0x104]
008a0bd4  08 21 9d e5                                      ldr r2, [sp, #0x108]
008a0bd8  02 10 53 e0                                      subs r1, r3, r2
008a0bdc  35 00 00 1a                                      bne #0x8a0cb8
008a0be0  e4 08 9f e5                                      ldr r0, [pc, #0x8e4]
008a0be4  00 10 e0 e3                                      mvn r1, #0
008a0be8  00 40 a0 e3                                      mov r4, #0
008a0bec  00 00 8f e0                                      add r0, pc, r0
008a0bf0  c3 ed ff eb                                      bl #0x89c304
008a0bf4  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
008a0bf8  18 30 9d e5                                      ldr r3, [sp, #0x18]
008a0bfc  03 00 50 e1                                      cmp r0, r3
008a0c00  06 00 00 0a                                      beq #0x8a0c20
008a0c04  00 00 50 e3                                      cmp r0, #0
008a0c08  04 00 00 0a                                      beq #0x8a0c20
008a0c0c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
008a0c10  01 10 60 e0                                      rsb r1, r0, r1
008a0c14  80 00 51 e3                                      cmp r1, #0x80
008a0c18  20 00 00 8a                                      bhi #0x8a0ca0
008a0c1c  c5 75 00 eb                                      bl #0x8be338
008a0c20  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
008a0c24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008a0c28  01 00 50 e1                                      cmp r0, r1
008a0c2c  06 00 00 0a                                      beq #0x8a0c4c
008a0c30  00 00 50 e3                                      cmp r0, #0
008a0c34  04 00 00 0a                                      beq #0x8a0c4c
008a0c38  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
008a0c3c  01 10 60 e0                                      rsb r1, r0, r1
008a0c40  80 00 51 e3                                      cmp r1, #0x80
008a0c44  19 00 00 8a                                      bhi #0x8a0cb0
008a0c48  ba 75 00 eb                                      bl #0x8be338
008a0c4c  08 01 9d e5                                      ldr r0, [sp, #0x108]
008a0c50  34 20 9d e5                                      ldr r2, [sp, #0x34]
008a0c54  02 00 50 e1                                      cmp r0, r2
008a0c58  06 00 00 0a                                      beq #0x8a0c78
008a0c5c  00 00 50 e3                                      cmp r0, #0
008a0c60  04 00 00 0a                                      beq #0x8a0c78
008a0c64  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
008a0c68  01 10 60 e0                                      rsb r1, r0, r1
008a0c6c  80 00 51 e3                                      cmp r1, #0x80
008a0c70  0c 00 00 8a                                      bhi #0x8a0ca8
008a0c74  af 75 00 eb                                      bl #0x8be338
008a0c78  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
008a0c7c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
008a0c80  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
008a0c84  00 30 91 e7                                      ldr r3, [r1, r0]
008a0c88  04 00 a0 e1                                      mov r0, r4
008a0c8c  00 30 93 e5                                      ldr r3, [r3]
008a0c90  03 00 52 e1                                      cmp r2, r3
008a0c94  07 02 00 1a                                      bne #0x8a14b8
008a0c98  45 df 8d e2                                      add sp, sp, #0x114
008a0c9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008a0ca0  82 b5 e9 eb                                      bl #0x30e2b0
008a0ca4  dd ff ff ea                                      b #0x8a0c20
008a0ca8  80 b5 e9 eb                                      bl #0x30e2b0
008a0cac  f1 ff ff ea                                      b #0x8a0c78
008a0cb0  7e b5 e9 eb                                      bl #0x30e2b0
008a0cb4  e4 ff ff ea                                      b #0x8a0c4c
008a0cb8  01 00 51 e3                                      cmp r1, #1
008a0cbc  c7 ff ff 0a                                      beq #0x8a0be0
008a0cc0  02 00 53 e1                                      cmp r3, r2
008a0cc4  06 00 00 0a                                      beq #0x8a0ce4
008a0cc8  01 10 82 e2                                      add r1, r2, #1
008a0ccc  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a0cd0  0d 00 50 e3                                      cmp r0, #0xd
008a0cd4  ea 01 00 0a                                      beq #0x8a1484
008a0cd8  01 00 53 e1                                      cmp r3, r1
008a0cdc  01 10 81 e2                                      add r1, r1, #1
008a0ce0  f9 ff ff 1a                                      bne #0x8a0ccc
008a0ce4  03 10 a0 e1                                      mov r1, r3
008a0ce8  01 00 53 e1                                      cmp r3, r1
008a0cec  bb ff ff 0a                                      beq #0x8a0be0
008a0cf0  d8 07 9f e5                                      ldr r0, [pc, #0x7d8]
008a0cf4  01 80 62 e0                                      rsb r8, r2, r1
008a0cf8  08 10 a0 e1                                      mov r1, r8
008a0cfc  00 00 8f e0                                      add r0, pc, r0
008a0d00  7f ed ff eb                                      bl #0x89c304
008a0d04  00 00 58 e3                                      cmp r8, #0
008a0d08  e8 01 00 da                                      ble #0x8a14b0
008a0d0c  08 61 9d e5                                      ldr r6, [sp, #0x108]
008a0d10  04 71 9d e5                                      ldr r7, [sp, #0x104]
008a0d14  ac 40 8d e2                                      add r4, sp, #0xac
008a0d18  04 00 a0 e1                                      mov r0, r4
008a0d1c  07 70 66 e0                                      rsb r7, r6, r7
008a0d20  07 00 58 e1                                      cmp r8, r7
008a0d24  08 70 86 90                                      addls r7, r6, r8
008a0d28  07 70 86 80                                      addhi r7, r6, r7
008a0d2c  07 50 66 e0                                      rsb r5, r6, r7
008a0d30  01 10 85 e2                                      add r1, r5, #1
008a0d34  bc 40 8d e5                                      str r4, [sp, #0xbc]
008a0d38  c0 40 8d e5                                      str r4, [sp, #0xc0]
008a0d3c  4e c2 e9 eb                                      bl #0x31167c
008a0d40  07 00 56 e1                                      cmp r6, r7
008a0d44  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
008a0d48  03 00 00 0a                                      beq #0x8a0d5c
008a0d4c  06 10 a0 e1                                      mov r1, r6
008a0d50  05 20 a0 e1                                      mov r2, r5
008a0d54  c3 b6 e9 eb                                      bl #0x30e868
008a0d58  05 00 80 e0                                      add r0, r0, r5
008a0d5c  00 30 a0 e3                                      mov r3, #0
008a0d60  bc 00 8d e5                                      str r0, [sp, #0xbc]
008a0d64  00 30 c0 e5                                      strb r3, [r0]
008a0d68  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008a0d6c  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
008a0d70  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
008a0d74  19 bf e9 eb                                      bl #0x3109e0
008a0d78  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
008a0d7c  04 00 50 e1                                      cmp r0, r4
008a0d80  06 00 00 0a                                      beq #0x8a0da0
008a0d84  00 00 50 e3                                      cmp r0, #0
008a0d88  04 00 00 0a                                      beq #0x8a0da0
008a0d8c  ac 10 9d e5                                      ldr r1, [sp, #0xac]
008a0d90  01 10 60 e0                                      rsb r1, r0, r1
008a0d94  80 00 51 e3                                      cmp r1, #0x80
008a0d98  b7 01 00 8a                                      bhi #0x8a147c
008a0d9c  65 75 00 eb                                      bl #0x8be338
008a0da0  2c 57 9f e5                                      ldr r5, [pc, #0x72c]
008a0da4  2c 67 9f e5                                      ldr r6, [pc, #0x72c]
008a0da8  00 40 a0 e3                                      mov r4, #0
008a0dac  05 50 8f e0                                      add r5, pc, r5
008a0db0  06 60 8f e0                                      add r6, pc, r6
008a0db4  05 00 00 ea                                      b #0x8a0dd0
008a0db8  d4 10 93 e1                                      ldrsb r1, [r3, r4]
008a0dbc  05 00 a0 e1                                      mov r0, r5
008a0dc0  01 40 84 e2                                      add r4, r4, #1
008a0dc4  4e ed ff eb                                      bl #0x89c304
008a0dc8  08 00 54 e1                                      cmp r4, r8
008a0dcc  0d 00 00 0a                                      beq #0x8a0e08
008a0dd0  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a0dd4  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a0dd8  02 20 63 e0                                      rsb r2, r3, r2
008a0ddc  04 00 52 e1                                      cmp r2, r4
008a0de0  f4 ff ff 8a                                      bhi #0x8a0db8
008a0de4  06 00 a0 e1                                      mov r0, r6
008a0de8  4e 75 00 eb                                      bl #0x8be328
008a0dec  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a0df0  05 00 a0 e1                                      mov r0, r5
008a0df4  d4 10 93 e1                                      ldrsb r1, [r3, r4]
008a0df8  01 40 84 e2                                      add r4, r4, #1
008a0dfc  40 ed ff eb                                      bl #0x89c304
008a0e00  08 00 54 e1                                      cmp r4, r8
008a0e04  f1 ff ff 1a                                      bne #0x8a0dd0
008a0e08  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a0e0c  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a0e10  03 40 a0 e1                                      mov r4, r3
008a0e14  03 00 52 e1                                      cmp r2, r3
008a0e18  6e 00 00 1a                                      bne #0x8a0fd8
008a0e1c  b8 06 9f e5                                      ldr r0, [pc, #0x6b8]
008a0e20  00 10 e0 e3                                      mvn r1, #0
008a0e24  00 00 8f e0                                      add r0, pc, r0
008a0e28  35 ed ff eb                                      bl #0x89c304
008a0e2c  10 20 a0 e3                                      mov r2, #0x10
008a0e30  00 10 a0 e3                                      mov r1, #0
008a0e34  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
008a0e38  21 b6 e9 eb                                      bl #0x30e6c4
008a0e3c  00 10 a0 e1                                      mov r1, r0
008a0e40  00 90 a0 e1                                      mov sb, r0
008a0e44  94 06 9f e5                                      ldr r0, [pc, #0x694]
008a0e48  02 80 88 e2                                      add r8, r8, #2
008a0e4c  00 00 8f e0                                      add r0, pc, r0
008a0e50  2b ed ff eb                                      bl #0x89c304
008a0e54  88 06 9f e5                                      ldr r0, [pc, #0x688]
008a0e58  08 10 a0 e1                                      mov r1, r8
008a0e5c  00 00 8f e0                                      add r0, pc, r0
008a0e60  27 ed ff eb                                      bl #0x89c304
008a0e64  00 00 59 e3                                      cmp sb, #0
008a0e68  1a 01 00 da                                      ble #0x8a12d8
008a0e6c  74 36 9f e5                                      ldr r3, [pc, #0x674]
008a0e70  74 16 9f e5                                      ldr r1, [pc, #0x674]
008a0e74  74 26 9f e5                                      ldr r2, [pc, #0x674]
008a0e78  24 30 8d e5                                      str r3, [sp, #0x24]
008a0e7c  70 36 9f e5                                      ldr r3, [pc, #0x670]
008a0e80  70 46 9f e5                                      ldr r4, [pc, #0x670]
008a0e84  70 66 9f e5                                      ldr r6, [pc, #0x670]
008a0e88  03 30 8f e0                                      add r3, pc, r3
008a0e8c  30 30 8d e5                                      str r3, [sp, #0x30]
008a0e90  68 36 9f e5                                      ldr r3, [pc, #0x668]
008a0e94  20 10 8d e5                                      str r1, [sp, #0x20]
008a0e98  28 20 8d e5                                      str r2, [sp, #0x28]
008a0e9c  03 30 8f e0                                      add r3, pc, r3
008a0ea0  04 40 8f e0                                      add r4, pc, r4
008a0ea4  38 30 8d e5                                      str r3, [sp, #0x38]
008a0ea8  06 60 8f e0                                      add r6, pc, r6
008a0eac  7c a0 8d e2                                      add sl, sp, #0x7c
008a0eb0  08 71 9d e5                                      ldr r7, [sp, #0x108]
008a0eb4  04 b1 9d e5                                      ldr fp, [sp, #0x104]
008a0eb8  8c a0 8d e5                                      str sl, [sp, #0x8c]
008a0ebc  90 a0 8d e5                                      str sl, [sp, #0x90]
008a0ec0  0b b0 67 e0                                      rsb fp, r7, fp
008a0ec4  0b 00 58 e1                                      cmp r8, fp
008a0ec8  5f 01 00 8a                                      bhi #0x8a144c
008a0ecc  0b b0 68 e0                                      rsb fp, r8, fp
008a0ed0  09 00 5b e1                                      cmp fp, sb
008a0ed4  0b b0 88 90                                      addls fp, r8, fp
008a0ed8  09 b0 88 80                                      addhi fp, r8, sb
008a0edc  0b b0 87 e0                                      add fp, r7, fp
008a0ee0  08 70 87 e0                                      add r7, r7, r8
008a0ee4  0b 50 67 e0                                      rsb r5, r7, fp
008a0ee8  0a 00 a0 e1                                      mov r0, sl
008a0eec  01 10 85 e2                                      add r1, r5, #1
008a0ef0  e1 c1 e9 eb                                      bl #0x31167c
008a0ef4  0b 00 57 e1                                      cmp r7, fp
008a0ef8  90 00 9d e5                                      ldr r0, [sp, #0x90]
008a0efc  03 00 00 0a                                      beq #0x8a0f10
008a0f00  07 10 a0 e1                                      mov r1, r7
008a0f04  05 20 a0 e1                                      mov r2, r5
008a0f08  56 b6 e9 eb                                      bl #0x30e868
008a0f0c  05 00 80 e0                                      add r0, r0, r5
008a0f10  00 30 a0 e3                                      mov r3, #0
008a0f14  8c 00 8d e5                                      str r0, [sp, #0x8c]
008a0f18  00 30 c0 e5                                      strb r3, [r0]
008a0f1c  18 00 9d e5                                      ldr r0, [sp, #0x18]
008a0f20  90 10 9d e5                                      ldr r1, [sp, #0x90]
008a0f24  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
008a0f28  ac be e9 eb                                      bl #0x3109e0
008a0f2c  90 00 9d e5                                      ldr r0, [sp, #0x90]
008a0f30  0a 00 50 e1                                      cmp r0, sl
008a0f34  06 00 00 0a                                      beq #0x8a0f54
008a0f38  00 00 50 e3                                      cmp r0, #0
008a0f3c  04 00 00 0a                                      beq #0x8a0f54
008a0f40  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
008a0f44  01 10 60 e0                                      rsb r1, r0, r1
008a0f48  80 00 51 e3                                      cmp r1, #0x80
008a0f4c  3c 01 00 8a                                      bhi #0x8a1444
008a0f50  f8 74 00 eb                                      bl #0x8be338
008a0f54  20 20 9d e5                                      ldr r2, [sp, #0x20]
008a0f58  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
008a0f5c  09 90 88 e0                                      add sb, r8, sb
008a0f60  02 00 8f e0                                      add r0, pc, r2
008a0f64  e6 ec ff eb                                      bl #0x89c304
008a0f68  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
008a0f6c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
008a0f70  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
008a0f74  22 be e9 eb                                      bl #0x310804
008a0f78  10 20 9d e5                                      ldr r2, [sp, #0x10]
008a0f7c  28 30 9d e5                                      ldr r3, [sp, #0x28]
008a0f80  02 50 89 e2                                      add r5, sb, #2
008a0f84  40 18 92 e5                                      ldr r1, [r2, #0x840]
008a0f88  03 00 8f e0                                      add r0, pc, r3
008a0f8c  dc ec ff eb                                      bl #0x89c304
008a0f90  24 30 9d e5                                      ldr r3, [sp, #0x24]
008a0f94  05 10 a0 e1                                      mov r1, r5
008a0f98  03 00 8f e0                                      add r0, pc, r3
008a0f9c  d8 ec ff eb                                      bl #0x89c304
008a0fa0  04 31 9d e5                                      ldr r3, [sp, #0x104]
008a0fa4  08 21 9d e5                                      ldr r2, [sp, #0x108]
008a0fa8  03 10 62 e0                                      rsb r1, r2, r3
008a0fac  01 00 55 e1                                      cmp r5, r1
008a0fb0  4e 00 00 3a                                      blo #0x8a10f0
008a0fb4  48 05 9f e5                                      ldr r0, [pc, #0x548]
008a0fb8  00 10 e0 e3                                      mvn r1, #0
008a0fbc  00 40 a0 e3                                      mov r4, #0
008a0fc0  00 00 8f e0                                      add r0, pc, r0
008a0fc4  ce ec ff eb                                      bl #0x89c304
008a0fc8  09 ff ff ea                                      b #0x8a0bf4
008a0fcc  01 30 83 e2                                      add r3, r3, #1
008a0fd0  02 00 53 e1                                      cmp r3, r2
008a0fd4  02 00 00 0a                                      beq #0x8a0fe4
008a0fd8  d0 10 d3 e1                                      ldrsb r1, [r3]
008a0fdc  20 00 51 e3                                      cmp r1, #0x20
008a0fe0  f9 ff ff 1a                                      bne #0x8a0fcc
008a0fe4  03 00 52 e1                                      cmp r2, r3
008a0fe8  8b ff ff 0a                                      beq #0x8a0e1c
008a0fec  14 05 9f e5                                      ldr r0, [pc, #0x514]
008a0ff0  03 40 64 e0                                      rsb r4, r4, r3
008a0ff4  04 10 a0 e1                                      mov r1, r4
008a0ff8  00 00 8f e0                                      add r0, pc, r0
008a0ffc  c0 ec ff eb                                      bl #0x89c304
008a1000  00 00 54 e3                                      cmp r4, #0
008a1004  88 ff ff da                                      ble #0x8a0e2c
008a1008  f0 60 9d e5                                      ldr r6, [sp, #0xf0]
008a100c  ec a0 9d e5                                      ldr sl, [sp, #0xec]
008a1010  94 50 8d e2                                      add r5, sp, #0x94
008a1014  05 00 a0 e1                                      mov r0, r5
008a1018  0a a0 66 e0                                      rsb sl, r6, sl
008a101c  0a 00 54 e1                                      cmp r4, sl
008a1020  04 a0 86 90                                      addls sl, r6, r4
008a1024  0a a0 86 80                                      addhi sl, r6, sl
008a1028  0a 70 66 e0                                      rsb r7, r6, sl
008a102c  01 10 87 e2                                      add r1, r7, #1
008a1030  a4 50 8d e5                                      str r5, [sp, #0xa4]
008a1034  a8 50 8d e5                                      str r5, [sp, #0xa8]
008a1038  8f c1 e9 eb                                      bl #0x31167c
008a103c  0a 00 56 e1                                      cmp r6, sl
008a1040  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
008a1044  03 00 00 0a                                      beq #0x8a1058
008a1048  06 10 a0 e1                                      mov r1, r6
008a104c  07 20 a0 e1                                      mov r2, r7
008a1050  04 b6 e9 eb                                      bl #0x30e868
008a1054  07 00 80 e0                                      add r0, r0, r7
008a1058  00 30 a0 e3                                      mov r3, #0
008a105c  a4 00 8d e5                                      str r0, [sp, #0xa4]
008a1060  00 30 c0 e5                                      strb r3, [r0]
008a1064  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008a1068  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
008a106c  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
008a1070  5a be e9 eb                                      bl #0x3109e0
008a1074  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
008a1078  05 00 50 e1                                      cmp r0, r5
008a107c  06 00 00 0a                                      beq #0x8a109c
008a1080  00 00 50 e3                                      cmp r0, #0
008a1084  04 00 00 0a                                      beq #0x8a109c
008a1088  94 10 9d e5                                      ldr r1, [sp, #0x94]
008a108c  01 10 60 e0                                      rsb r1, r0, r1
008a1090  80 00 51 e3                                      cmp r1, #0x80
008a1094  01 01 00 8a                                      bhi #0x8a14a0
008a1098  a6 74 00 eb                                      bl #0x8be338
008a109c  68 64 9f e5                                      ldr r6, [pc, #0x468]
008a10a0  68 74 9f e5                                      ldr r7, [pc, #0x468]
008a10a4  00 50 a0 e3                                      mov r5, #0
008a10a8  06 60 8f e0                                      add r6, pc, r6
008a10ac  07 70 8f e0                                      add r7, pc, r7
008a10b0  05 00 00 ea                                      b #0x8a10cc
008a10b4  d5 10 93 e1                                      ldrsb r1, [r3, r5]
008a10b8  06 00 a0 e1                                      mov r0, r6
008a10bc  01 50 85 e2                                      add r5, r5, #1
008a10c0  8f ec ff eb                                      bl #0x89c304
008a10c4  04 00 55 e1                                      cmp r5, r4
008a10c8  57 ff ff 0a                                      beq #0x8a0e2c
008a10cc  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a10d0  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a10d4  02 20 63 e0                                      rsb r2, r3, r2
008a10d8  05 00 52 e1                                      cmp r2, r5
008a10dc  f4 ff ff 8a                                      bhi #0x8a10b4
008a10e0  07 00 a0 e1                                      mov r0, r7
008a10e4  8f 74 00 eb                                      bl #0x8be328
008a10e8  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a10ec  f0 ff ff ea                                      b #0x8a10b4
008a10f0  02 00 85 e2                                      add r0, r5, #2
008a10f4  00 00 51 e1                                      cmp r1, r0
008a10f8  14 00 8d e5                                      str r0, [sp, #0x14]
008a10fc  ac ff ff 3a                                      blo #0x8a0fb4
008a1100  05 10 82 e0                                      add r1, r2, r5
008a1104  01 00 53 e1                                      cmp r3, r1
008a1108  74 00 00 1a                                      bne #0x8a12e0
008a110c  03 10 a0 e1                                      mov r1, r3
008a1110  01 00 53 e1                                      cmp r3, r1
008a1114  a6 ff ff 0a                                      beq #0x8a0fb4
008a1118  f4 03 9f e5                                      ldr r0, [pc, #0x3f4]
008a111c  01 80 62 e0                                      rsb r8, r2, r1
008a1120  08 10 a0 e1                                      mov r1, r8
008a1124  00 00 8f e0                                      add r0, pc, r0
008a1128  75 ec ff eb                                      bl #0x89c304
008a112c  00 00 58 e3                                      cmp r8, #0
008a1130  de 00 00 da                                      ble #0x8a14b0
008a1134  08 b1 9d e5                                      ldr fp, [sp, #0x108]
008a1138  04 21 9d e5                                      ldr r2, [sp, #0x104]
008a113c  64 70 8d e2                                      add r7, sp, #0x64
008a1140  74 70 8d e5                                      str r7, [sp, #0x74]
008a1144  02 20 6b e0                                      rsb r2, fp, r2
008a1148  02 00 55 e1                                      cmp r5, r2
008a114c  78 70 8d e5                                      str r7, [sp, #0x78]
008a1150  c3 00 00 8a                                      bhi #0x8a1464
008a1154  02 20 65 e0                                      rsb r2, r5, r2
008a1158  02 00 58 e1                                      cmp r8, r2
008a115c  08 20 85 90                                      addls r2, r5, r8
008a1160  02 20 85 80                                      addhi r2, r5, r2
008a1164  02 20 8b e0                                      add r2, fp, r2
008a1168  05 b0 8b e0                                      add fp, fp, r5
008a116c  02 30 6b e0                                      rsb r3, fp, r2
008a1170  07 00 a0 e1                                      mov r0, r7
008a1174  01 10 83 e2                                      add r1, r3, #1
008a1178  08 20 8d e5                                      str r2, [sp, #8]
008a117c  04 30 8d e5                                      str r3, [sp, #4]
008a1180  3d c1 e9 eb                                      bl #0x31167c
008a1184  08 20 9d e5                                      ldr r2, [sp, #8]
008a1188  78 00 9d e5                                      ldr r0, [sp, #0x78]
008a118c  04 30 9d e5                                      ldr r3, [sp, #4]
008a1190  02 00 5b e1                                      cmp fp, r2
008a1194  04 00 00 0a                                      beq #0x8a11ac
008a1198  03 20 a0 e1                                      mov r2, r3
008a119c  0b 10 a0 e1                                      mov r1, fp
008a11a0  b0 b5 e9 eb                                      bl #0x30e868
008a11a4  04 30 9d e5                                      ldr r3, [sp, #4]
008a11a8  03 00 80 e0                                      add r0, r0, r3
008a11ac  00 30 a0 e3                                      mov r3, #0
008a11b0  74 00 8d e5                                      str r0, [sp, #0x74]
008a11b4  00 30 c0 e5                                      strb r3, [r0]
008a11b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008a11bc  78 10 9d e5                                      ldr r1, [sp, #0x78]
008a11c0  74 20 9d e5                                      ldr r2, [sp, #0x74]
008a11c4  05 be e9 eb                                      bl #0x3109e0
008a11c8  78 00 9d e5                                      ldr r0, [sp, #0x78]
008a11cc  07 00 50 e1                                      cmp r0, r7
008a11d0  06 00 00 0a                                      beq #0x8a11f0
008a11d4  00 00 50 e3                                      cmp r0, #0
008a11d8  04 00 00 0a                                      beq #0x8a11f0
008a11dc  64 10 9d e5                                      ldr r1, [sp, #0x64]
008a11e0  01 10 60 e0                                      rsb r1, r0, r1
008a11e4  80 00 51 e3                                      cmp r1, #0x80
008a11e8  9b 00 00 8a                                      bhi #0x8a145c
008a11ec  51 74 00 eb                                      bl #0x8be338
008a11f0  20 03 9f e5                                      ldr r0, [pc, #0x320]
008a11f4  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
008a11f8  00 00 8f e0                                      add r0, pc, r0
008a11fc  40 ec ff eb                                      bl #0x89c304
008a1200  08 00 55 e1                                      cmp r5, r8
008a1204  19 00 00 aa                                      bge #0x8a1270
008a1208  01 70 e0 e3                                      mvn r7, #1
008a120c  07 70 69 e0                                      rsb r7, sb, r7
008a1210  07 70 88 e0                                      add r7, r8, r7
008a1214  00 50 a0 e3                                      mov r5, #0
008a1218  30 90 9d e5                                      ldr sb, [sp, #0x30]
008a121c  05 00 00 ea                                      b #0x8a1238
008a1220  d5 10 93 e1                                      ldrsb r1, [r3, r5]
008a1224  04 00 a0 e1                                      mov r0, r4
008a1228  01 50 85 e2                                      add r5, r5, #1
008a122c  34 ec ff eb                                      bl #0x89c304
008a1230  07 00 55 e1                                      cmp r5, r7
008a1234  0d 00 00 0a                                      beq #0x8a1270
008a1238  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a123c  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a1240  02 20 63 e0                                      rsb r2, r3, r2
008a1244  05 00 52 e1                                      cmp r2, r5
008a1248  f4 ff ff 8a                                      bhi #0x8a1220
008a124c  09 00 a0 e1                                      mov r0, sb
008a1250  34 74 00 eb                                      bl #0x8be328
008a1254  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a1258  04 00 a0 e1                                      mov r0, r4
008a125c  d5 10 93 e1                                      ldrsb r1, [r3, r5]
008a1260  01 50 85 e2                                      add r5, r5, #1
008a1264  26 ec ff eb                                      bl #0x89c304
008a1268  07 00 55 e1                                      cmp r5, r7
008a126c  f1 ff ff 1a                                      bne #0x8a1238
008a1270  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a1274  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a1278  03 50 a0 e1                                      mov r5, r3
008a127c  03 00 52 e1                                      cmp r2, r3
008a1280  27 00 00 1a                                      bne #0x8a1324
008a1284  90 02 9f e5                                      ldr r0, [pc, #0x290]
008a1288  00 10 e0 e3                                      mvn r1, #0
008a128c  00 00 8f e0                                      add r0, pc, r0
008a1290  1b ec ff eb                                      bl #0x89c304
008a1294  10 20 a0 e3                                      mov r2, #0x10
008a1298  00 10 a0 e3                                      mov r1, #0
008a129c  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
008a12a0  07 b5 e9 eb                                      bl #0x30e6c4
008a12a4  00 10 a0 e1                                      mov r1, r0
008a12a8  00 90 a0 e1                                      mov sb, r0
008a12ac  6c 02 9f e5                                      ldr r0, [pc, #0x26c]
008a12b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
008a12b4  00 00 8f e0                                      add r0, pc, r0
008a12b8  08 80 82 e0                                      add r8, r2, r8
008a12bc  10 ec ff eb                                      bl #0x89c304
008a12c0  5c 02 9f e5                                      ldr r0, [pc, #0x25c]
008a12c4  08 10 a0 e1                                      mov r1, r8
008a12c8  00 00 8f e0                                      add r0, pc, r0
008a12cc  0c ec ff eb                                      bl #0x89c304
008a12d0  00 00 59 e3                                      cmp sb, #0
008a12d4  f5 fe ff ca                                      bgt #0x8a0eb0
008a12d8  01 40 a0 e3                                      mov r4, #1
008a12dc  44 fe ff ea                                      b #0x8a0bf4
008a12e0  01 10 81 e2                                      add r1, r1, #1
008a12e4  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a12e8  0d 00 50 e3                                      cmp r0, #0xd
008a12ec  05 00 00 0a                                      beq #0x8a1308
008a12f0  01 00 53 e1                                      cmp r3, r1
008a12f4  01 10 81 e2                                      add r1, r1, #1
008a12f8  83 ff ff 0a                                      beq #0x8a110c
008a12fc  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a1300  0d 00 50 e3                                      cmp r0, #0xd
008a1304  f9 ff ff 1a                                      bne #0x8a12f0
008a1308  01 00 53 e1                                      cmp r3, r1
008a130c  7e ff ff 0a                                      beq #0x8a110c
008a1310  d0 00 d1 e1                                      ldrsb r0, [r1]
008a1314  0a 00 50 e3                                      cmp r0, #0xa
008a1318  f0 ff ff 1a                                      bne #0x8a12e0
008a131c  01 10 41 e2                                      sub r1, r1, #1
008a1320  7a ff ff ea                                      b #0x8a1110
008a1324  d0 10 d3 e1                                      ldrsb r1, [r3]
008a1328  20 00 51 e3                                      cmp r1, #0x20
008a132c  02 00 00 0a                                      beq #0x8a133c
008a1330  01 30 83 e2                                      add r3, r3, #1
008a1334  02 00 53 e1                                      cmp r3, r2
008a1338  f9 ff ff 1a                                      bne #0x8a1324
008a133c  03 00 52 e1                                      cmp r2, r3
008a1340  cf ff ff 0a                                      beq #0x8a1284
008a1344  dc 01 9f e5                                      ldr r0, [pc, #0x1dc]
008a1348  03 50 65 e0                                      rsb r5, r5, r3
008a134c  05 10 a0 e1                                      mov r1, r5
008a1350  00 00 8f e0                                      add r0, pc, r0
008a1354  ea eb ff eb                                      bl #0x89c304
008a1358  00 00 55 e3                                      cmp r5, #0
008a135c  cc ff ff da                                      ble #0x8a1294
008a1360  f0 b0 9d e5                                      ldr fp, [sp, #0xf0]
008a1364  ec 30 9d e5                                      ldr r3, [sp, #0xec]
008a1368  4c 70 8d e2                                      add r7, sp, #0x4c
008a136c  07 00 a0 e1                                      mov r0, r7
008a1370  03 30 6b e0                                      rsb r3, fp, r3
008a1374  03 00 55 e1                                      cmp r5, r3
008a1378  05 30 8b 90                                      addls r3, fp, r5
008a137c  03 30 8b 80                                      addhi r3, fp, r3
008a1380  03 90 6b e0                                      rsb sb, fp, r3
008a1384  01 10 89 e2                                      add r1, sb, #1
008a1388  04 30 8d e5                                      str r3, [sp, #4]
008a138c  5c 70 8d e5                                      str r7, [sp, #0x5c]
008a1390  60 70 8d e5                                      str r7, [sp, #0x60]
008a1394  b8 c0 e9 eb                                      bl #0x31167c
008a1398  04 30 9d e5                                      ldr r3, [sp, #4]
008a139c  60 00 9d e5                                      ldr r0, [sp, #0x60]
008a13a0  03 00 5b e1                                      cmp fp, r3
008a13a4  03 00 00 0a                                      beq #0x8a13b8
008a13a8  0b 10 a0 e1                                      mov r1, fp
008a13ac  09 20 a0 e1                                      mov r2, sb
008a13b0  2c b5 e9 eb                                      bl #0x30e868
008a13b4  09 00 80 e0                                      add r0, r0, sb
008a13b8  00 30 a0 e3                                      mov r3, #0
008a13bc  5c 00 8d e5                                      str r0, [sp, #0x5c]
008a13c0  00 30 c0 e5                                      strb r3, [r0]
008a13c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008a13c8  60 10 9d e5                                      ldr r1, [sp, #0x60]
008a13cc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
008a13d0  82 bd e9 eb                                      bl #0x3109e0
008a13d4  60 00 9d e5                                      ldr r0, [sp, #0x60]
008a13d8  07 00 50 e1                                      cmp r0, r7
008a13dc  06 00 00 0a                                      beq #0x8a13fc
008a13e0  00 00 50 e3                                      cmp r0, #0
008a13e4  04 00 00 0a                                      beq #0x8a13fc
008a13e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
008a13ec  01 10 60 e0                                      rsb r1, r0, r1
008a13f0  80 00 51 e3                                      cmp r1, #0x80
008a13f4  1e 00 00 8a                                      bhi #0x8a1474
008a13f8  ce 73 00 eb                                      bl #0x8be338
008a13fc  00 70 a0 e3                                      mov r7, #0
008a1400  38 90 9d e5                                      ldr sb, [sp, #0x38]
008a1404  05 00 00 ea                                      b #0x8a1420
008a1408  d7 10 93 e1                                      ldrsb r1, [r3, r7]
008a140c  06 00 a0 e1                                      mov r0, r6
008a1410  01 70 87 e2                                      add r7, r7, #1
008a1414  ba eb ff eb                                      bl #0x89c304
008a1418  05 00 57 e1                                      cmp r7, r5
008a141c  9c ff ff 0a                                      beq #0x8a1294
008a1420  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a1424  ec 20 9d e5                                      ldr r2, [sp, #0xec]
008a1428  02 20 63 e0                                      rsb r2, r3, r2
008a142c  02 00 57 e1                                      cmp r7, r2
008a1430  f4 ff ff 3a                                      blo #0x8a1408
008a1434  09 00 a0 e1                                      mov r0, sb
008a1438  ba 73 00 eb                                      bl #0x8be328
008a143c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
008a1440  f0 ff ff ea                                      b #0x8a1408
008a1444  99 b3 e9 eb                                      bl #0x30e2b0
008a1448  c1 fe ff ea                                      b #0x8a0f54
008a144c  d8 00 9f e5                                      ldr r0, [pc, #0xd8]
008a1450  00 00 8f e0                                      add r0, pc, r0
008a1454  b3 73 00 eb                                      bl #0x8be328
008a1458  af fe ff ea                                      b #0x8a0f1c
008a145c  93 b3 e9 eb                                      bl #0x30e2b0
008a1460  62 ff ff ea                                      b #0x8a11f0
008a1464  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
008a1468  00 00 8f e0                                      add r0, pc, r0
008a146c  ad 73 00 eb                                      bl #0x8be328
008a1470  50 ff ff ea                                      b #0x8a11b8
008a1474  8d b3 e9 eb                                      bl #0x30e2b0
008a1478  df ff ff ea                                      b #0x8a13fc
008a147c  8b b3 e9 eb                                      bl #0x30e2b0
008a1480  46 fe ff ea                                      b #0x8a0da0
008a1484  01 00 53 e1                                      cmp r3, r1
008a1488  15 fe ff 0a                                      beq #0x8a0ce4
008a148c  d0 00 d1 e1                                      ldrsb r0, [r1]
008a1490  0a 00 50 e3                                      cmp r0, #0xa
008a1494  03 00 00 1a                                      bne #0x8a14a8
008a1498  01 10 41 e2                                      sub r1, r1, #1
008a149c  11 fe ff ea                                      b #0x8a0ce8
008a14a0  82 b3 e9 eb                                      bl #0x30e2b0
008a14a4  fc fe ff ea                                      b #0x8a109c
008a14a8  01 10 81 e2                                      add r1, r1, #1
008a14ac  06 fe ff ea                                      b #0x8a0ccc
008a14b0  00 40 a0 e3                                      mov r4, #0
008a14b4  ce fd ff ea                                      b #0x8a0bf4
008a14b8  94 b3 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008a14bc  90 3f 0f 00 ac 40 00 00 90 ac 02 00 98 c0 06 00  .byte 0x90, 0x3f, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0xac, 0x02, 0x00, 0x98, 0xc0, 0x06, 0x00
008a14cc  94 c0 06 00 84 bf 06 00 ec be 06 00 a8 d6 01 00  .byte 0x94, 0xc0, 0x06, 0x00, 0x84, 0xbf, 0x06, 0x00, 0xec, 0xbe, 0x06, 0x00, 0xa8, 0xd6, 0x01, 0x00
008a14dc  8c be 06 00 84 be 06 00 8c be 06 00 50 bd 06 00  .byte 0x8c, 0xbe, 0x06, 0x00, 0x84, 0xbe, 0x06, 0x00, 0x8c, 0xbe, 0x06, 0x00, 0x50, 0xbd, 0x06, 0x00
008a14ec  a0 bd 06 00 90 bd 06 00 d0 d5 01 00 f8 bd 06 00  .byte 0xa0, 0xbd, 0x06, 0x00, 0x90, 0xbd, 0x06, 0x00, 0xd0, 0xd5, 0x01, 0x00, 0xf8, 0xbd, 0x06, 0x00
008a14fc  f0 bd 06 00 bc d5 01 00 78 bd 06 00 b8 bc 06 00  .byte 0xf0, 0xbd, 0x06, 0x00, 0xbc, 0xd5, 0x01, 0x00, 0x78, 0xbd, 0x06, 0x00, 0xb8, 0xbc, 0x06, 0x00
008a150c  f0 bb 06 00 ac d3 01 00 14 bc 06 00 60 bb 06 00  .byte 0xf0, 0xbb, 0x06, 0x00, 0xac, 0xd3, 0x01, 0x00, 0x14, 0xbc, 0x06, 0x00, 0x60, 0xbb, 0x06, 0x00
008a151c  ec ba 06 00 1c ba 06 00 20 ba 06 00 28 ba 06 00  .byte 0xec, 0xba, 0x06, 0x00, 0x1c, 0xba, 0x06, 0x00, 0x20, 0xba, 0x06, 0x00, 0x28, 0xba, 0x06, 0x00
008a152c  08 d0 01 00 f0 cf 01 00                          .byte 0x08, 0xd0, 0x01, 0x00, 0xf0, 0xcf, 0x01, 0x00

; FUNCTION 0x008a1534, declared_size=1768, range_size=1768, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket20CalculateTotalLengthEv
; demangled: LCXPlayerSocket::CalculateTotalLength()
; decoder-mode: arm
008a1534  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008a1538  c0 56 9f e5                                      ldr r5, [pc, #0x6c0]
008a153c  c0 76 9f e5                                      ldr r7, [pc, #0x6c0]
008a1540  c0 86 9f e5                                      ldr r8, [pc, #0x6c0]
008a1544  05 50 8f e0                                      add r5, pc, r5
008a1548  07 30 95 e7                                      ldr r3, [r5, r7]
008a154c  bc d0 4d e2                                      sub sp, sp, #0xbc
008a1550  a0 40 8d e2                                      add r4, sp, #0xa0
008a1554  00 30 93 e5                                      ldr r3, [r3]
008a1558  08 80 8f e0                                      add r8, pc, r8
008a155c  04 a0 a0 e1                                      mov sl, r4
008a1560  b4 30 8d e5                                      str r3, [sp, #0xb4]
008a1564  00 60 a0 e1                                      mov r6, r0
008a1568  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
008a156c  0f 00 aa e8                                      stm sl!, {r0, r1, r2, r3}
008a1570  b0 80 d8 e1                                      ldrh r8, [r8]
008a1574  90 c6 9f e5                                      ldr ip, [pc, #0x690]
008a1578  8c 90 8d e2                                      add sb, sp, #0x8c
008a157c  b0 80 ca e1                                      strh r8, [sl]
008a1580  0c c0 8f e0                                      add ip, pc, ip
008a1584  09 80 a0 e1                                      mov r8, sb
008a1588  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
008a158c  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
008a1590  40 a8 96 e5                                      ldr sl, [r6, #0x840]
008a1594  3c 68 96 e5                                      ldr r6, [r6, #0x83c]
008a1598  b0 c0 dc e1                                      ldrh ip, [ip]
008a159c  0a 30 56 e0                                      subs r3, r6, sl
008a15a0  b0 c0 c8 e1                                      strh ip, [r8]
008a15a4  08 00 00 1a                                      bne #0x8a15cc
008a15a8  00 a0 e0 e3                                      mvn sl, #0
008a15ac  07 30 95 e7                                      ldr r3, [r5, r7]
008a15b0  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
008a15b4  0a 00 a0 e1                                      mov r0, sl
008a15b8  00 30 93 e5                                      ldr r3, [r3]
008a15bc  03 00 52 e1                                      cmp r2, r3
008a15c0  8d 01 00 1a                                      bne #0x8a1bfc
008a15c4  bc d0 8d e2                                      add sp, sp, #0xbc
008a15c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008a15cc  03 00 53 e3                                      cmp r3, #3
008a15d0  f4 ff ff 9a                                      bls #0x8a15a8
008a15d4  0a 00 56 e1                                      cmp r6, sl
008a15d8  0a 00 00 0a                                      beq #0x8a1608
008a15dc  2c b6 9f e5                                      ldr fp, [pc, #0x62c]
008a15e0  01 c0 8a e2                                      add ip, sl, #1
008a15e4  0b b0 8f e0                                      add fp, pc, fp
008a15e8  04 80 8b e2                                      add r8, fp, #4
008a15ec  02 b0 8b e2                                      add fp, fp, #2
008a15f0  d1 30 5c e1                                      ldrsb r3, [ip, #-1]
008a15f4  0d 00 53 e3                                      cmp r3, #0xd
008a15f8  ee 00 00 0a                                      beq #0x8a19b8
008a15fc  0c 00 56 e1                                      cmp r6, ip
008a1600  01 c0 8c e2                                      add ip, ip, #1
008a1604  f9 ff ff 1a                                      bne #0x8a15f0
008a1608  06 30 a0 e1                                      mov r3, r6
008a160c  03 00 56 e1                                      cmp r6, r3
008a1610  e4 ff ff 0a                                      beq #0x8a15a8
008a1614  0a 30 53 e0                                      subs r3, r3, sl
008a1618  e2 ff ff 4a                                      bmi #0x8a15a8
008a161c  06 60 6a e0                                      rsb r6, sl, r6
008a1620  06 00 53 e1                                      cmp r3, r6
008a1624  03 b0 8a 90                                      addls fp, sl, r3
008a1628  06 b0 8a 80                                      addhi fp, sl, r6
008a162c  0b 80 6a e0                                      rsb r8, sl, fp
008a1630  74 60 8d e2                                      add r6, sp, #0x74
008a1634  06 00 a0 e1                                      mov r0, r6
008a1638  01 10 88 e2                                      add r1, r8, #1
008a163c  84 60 8d e5                                      str r6, [sp, #0x84]
008a1640  88 60 8d e5                                      str r6, [sp, #0x88]
008a1644  0c c0 e9 eb                                      bl #0x31167c
008a1648  0b 00 5a e1                                      cmp sl, fp
008a164c  88 00 9d e5                                      ldr r0, [sp, #0x88]
008a1650  03 00 00 0a                                      beq #0x8a1664
008a1654  0a 10 a0 e1                                      mov r1, sl
008a1658  08 20 a0 e1                                      mov r2, r8
008a165c  81 b4 e9 eb                                      bl #0x30e868
008a1660  08 00 80 e0                                      add r0, r0, r8
008a1664  00 30 a0 e3                                      mov r3, #0
008a1668  84 00 8d e5                                      str r0, [sp, #0x84]
008a166c  00 30 c0 e5                                      strb r3, [r0]
008a1670  04 00 a0 e1                                      mov r0, r4
008a1674  f6 b1 e9 eb                                      bl #0x30de54
008a1678  84 a0 9d e5                                      ldr sl, [sp, #0x84]
008a167c  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1680  08 b0 5a e0                                      subs fp, sl, r8
008a1684  39 00 00 1a                                      bne #0x8a1770
008a1688  00 00 50 e3                                      cmp r0, #0
008a168c  04 00 8d 05                                      streq r0, [sp, #4]
008a1690  3e 00 00 1a                                      bne #0x8a1790
008a1694  04 00 a0 e1                                      mov r0, r4
008a1698  7e ed ff eb                                      bl #0x89cc98
008a169c  88 30 9d e5                                      ldr r3, [sp, #0x88]
008a16a0  04 80 9d e5                                      ldr r8, [sp, #4]
008a16a4  84 90 9d e5                                      ldr sb, [sp, #0x84]
008a16a8  2c 40 8d e2                                      add r4, sp, #0x2c
008a16ac  00 00 88 e0                                      add r0, r8, r0
008a16b0  09 90 63 e0                                      rsb sb, r3, sb
008a16b4  09 00 50 e1                                      cmp r0, sb
008a16b8  3c 40 8d e5                                      str r4, [sp, #0x3c]
008a16bc  40 40 8d e5                                      str r4, [sp, #0x40]
008a16c0  b8 00 00 8a                                      bhi #0x8a19a8
008a16c4  00 a0 83 e0                                      add sl, r3, r0
008a16c8  09 90 83 e0                                      add sb, r3, sb
008a16cc  09 80 6a e0                                      rsb r8, sl, sb
008a16d0  04 00 a0 e1                                      mov r0, r4
008a16d4  01 10 88 e2                                      add r1, r8, #1
008a16d8  e7 bf e9 eb                                      bl #0x31167c
008a16dc  09 00 5a e1                                      cmp sl, sb
008a16e0  40 00 9d e5                                      ldr r0, [sp, #0x40]
008a16e4  03 00 00 0a                                      beq #0x8a16f8
008a16e8  0a 10 a0 e1                                      mov r1, sl
008a16ec  08 20 a0 e1                                      mov r2, r8
008a16f0  5c b4 e9 eb                                      bl #0x30e868
008a16f4  08 00 80 e0                                      add r0, r0, r8
008a16f8  00 30 a0 e3                                      mov r3, #0
008a16fc  3c 00 8d e5                                      str r0, [sp, #0x3c]
008a1700  00 30 c0 e5                                      strb r3, [r0]
008a1704  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
008a1708  40 90 9d e5                                      ldr sb, [sp, #0x40]
008a170c  09 20 53 e0                                      subs r2, r3, sb
008a1710  43 00 00 1a                                      bne #0x8a1824
008a1714  04 00 59 e1                                      cmp sb, r4
008a1718  e9 00 00 0a                                      beq #0x8a1ac4
008a171c  00 00 59 e3                                      cmp sb, #0
008a1720  e7 00 00 0a                                      beq #0x8a1ac4
008a1724  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
008a1728  01 10 69 e0                                      rsb r1, sb, r1
008a172c  80 00 51 e3                                      cmp r1, #0x80
008a1730  06 01 00 8a                                      bhi #0x8a1b50
008a1734  09 00 a0 e1                                      mov r0, sb
008a1738  fe 72 00 eb                                      bl #0x8be338
008a173c  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1740  00 a0 e0 e3                                      mvn sl, #0
008a1744  06 00 58 e1                                      cmp r8, r6
008a1748  97 ff ff 0a                                      beq #0x8a15ac
008a174c  00 00 58 e3                                      cmp r8, #0
008a1750  95 ff ff 0a                                      beq #0x8a15ac
008a1754  74 10 9d e5                                      ldr r1, [sp, #0x74]
008a1758  01 10 68 e0                                      rsb r1, r8, r1
008a175c  80 00 51 e3                                      cmp r1, #0x80
008a1760  69 00 00 8a                                      bhi #0x8a190c
008a1764  08 00 a0 e1                                      mov r0, r8
008a1768  f2 72 00 eb                                      bl #0x8be338
008a176c  8e ff ff ea                                      b #0x8a15ac
008a1770  0b 00 50 e1                                      cmp r0, fp
008a1774  67 00 00 9a                                      bls #0x8a1918
008a1778  09 00 a0 e1                                      mov r0, sb
008a177c  b4 b1 e9 eb                                      bl #0x30de54
008a1780  00 00 5b e1                                      cmp fp, r0
008a1784  d1 00 00 2a                                      bhs #0x8a1ad0
008a1788  00 a0 a0 e3                                      mov sl, #0
008a178c  ec ff ff ea                                      b #0x8a1744
008a1790  09 00 a0 e1                                      mov r0, sb
008a1794  ae b1 e9 eb                                      bl #0x30de54
008a1798  00 40 50 e2                                      subs r4, r0, #0
008a179c  f9 ff ff 1a                                      bne #0x8a1788
008a17a0  09 00 a0 e1                                      mov r0, sb
008a17a4  3b ed ff eb                                      bl #0x89cc98
008a17a8  5c 80 8d e2                                      add r8, sp, #0x5c
008a17ac  00 20 84 e0                                      add r2, r4, r0
008a17b0  00 30 e0 e3                                      mvn r3, #0
008a17b4  08 00 a0 e1                                      mov r0, r8
008a17b8  06 10 a0 e1                                      mov r1, r6
008a17bc  9c fa ff eb                                      bl #0x8a0234
008a17c0  4c 14 9f e5                                      ldr r1, [pc, #0x44c]
008a17c4  08 00 a0 e1                                      mov r0, r8
008a17c8  00 20 a0 e3                                      mov r2, #0
008a17cc  01 10 8f e0                                      add r1, pc, r1
008a17d0  69 3a fe eb                                      bl #0x83017c
008a17d4  00 30 50 e2                                      subs r3, r0, #0
008a17d8  e1 00 00 ba                                      blt #0x8a1b64
008a17dc  44 40 8d e2                                      add r4, sp, #0x44
008a17e0  08 10 a0 e1                                      mov r1, r8
008a17e4  00 20 a0 e3                                      mov r2, #0
008a17e8  04 00 a0 e1                                      mov r0, r4
008a17ec  90 fa ff eb                                      bl #0x8a0234
008a17f0  58 10 9d e5                                      ldr r1, [sp, #0x58]
008a17f4  54 20 9d e5                                      ldr r2, [sp, #0x54]
008a17f8  08 00 a0 e1                                      mov r0, r8
008a17fc  77 bc e9 eb                                      bl #0x3109e0
008a1800  04 00 a0 e1                                      mov r0, r4
008a1804  68 c8 e9 eb                                      bl #0x3139ac
008a1808  70 00 9d e5                                      ldr r0, [sp, #0x70]
008a180c  ae ed ff eb                                      bl #0x89cecc
008a1810  00 a0 a0 e1                                      mov sl, r0
008a1814  08 00 a0 e1                                      mov r0, r8
008a1818  63 c8 e9 eb                                      bl #0x3139ac
008a181c  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1820  c7 ff ff ea                                      b #0x8a1744
008a1824  01 00 52 e3                                      cmp r2, #1
008a1828  b9 ff ff 0a                                      beq #0x8a1714
008a182c  09 00 53 e1                                      cmp r3, sb
008a1830  71 00 00 1a                                      bne #0x8a19fc
008a1834  03 b0 a0 e1                                      mov fp, r3
008a1838  0b 00 53 e1                                      cmp r3, fp
008a183c  b4 ff ff 0a                                      beq #0x8a1714
008a1840  09 b0 5b e0                                      subs fp, fp, sb
008a1844  b2 ff ff 4a                                      bmi #0x8a1714
008a1848  02 00 5b e1                                      cmp fp, r2
008a184c  0b b0 89 90                                      addls fp, sb, fp
008a1850  02 b0 89 80                                      addhi fp, sb, r2
008a1854  14 80 8d e2                                      add r8, sp, #0x14
008a1858  0b a0 69 e0                                      rsb sl, sb, fp
008a185c  08 00 a0 e1                                      mov r0, r8
008a1860  01 10 8a e2                                      add r1, sl, #1
008a1864  24 80 8d e5                                      str r8, [sp, #0x24]
008a1868  28 80 8d e5                                      str r8, [sp, #0x28]
008a186c  82 bf e9 eb                                      bl #0x31167c
008a1870  0b 00 59 e1                                      cmp sb, fp
008a1874  28 00 9d e5                                      ldr r0, [sp, #0x28]
008a1878  03 00 00 0a                                      beq #0x8a188c
008a187c  09 10 a0 e1                                      mov r1, sb
008a1880  0a 20 a0 e1                                      mov r2, sl
008a1884  f7 b3 e9 eb                                      bl #0x30e868
008a1888  0a 00 80 e0                                      add r0, r0, sl
008a188c  00 30 a0 e3                                      mov r3, #0
008a1890  24 00 8d e5                                      str r0, [sp, #0x24]
008a1894  00 30 c0 e5                                      strb r3, [r0]
008a1898  28 10 9d e5                                      ldr r1, [sp, #0x28]
008a189c  04 00 a0 e1                                      mov r0, r4
008a18a0  24 20 9d e5                                      ldr r2, [sp, #0x24]
008a18a4  4d bc e9 eb                                      bl #0x3109e0
008a18a8  28 00 9d e5                                      ldr r0, [sp, #0x28]
008a18ac  08 00 50 e1                                      cmp r0, r8
008a18b0  06 00 00 0a                                      beq #0x8a18d0
008a18b4  00 00 50 e3                                      cmp r0, #0
008a18b8  04 00 00 0a                                      beq #0x8a18d0
008a18bc  14 10 9d e5                                      ldr r1, [sp, #0x14]
008a18c0  01 10 60 e0                                      rsb r1, r0, r1
008a18c4  80 00 51 e3                                      cmp r1, #0x80
008a18c8  62 00 00 8a                                      bhi #0x8a1a58
008a18cc  99 72 00 eb                                      bl #0x8be338
008a18d0  40 00 9d e5                                      ldr r0, [sp, #0x40]
008a18d4  7c ed ff eb                                      bl #0x89cecc
008a18d8  00 a0 a0 e1                                      mov sl, r0
008a18dc  40 00 9d e5                                      ldr r0, [sp, #0x40]
008a18e0  04 00 50 e1                                      cmp r0, r4
008a18e4  06 00 00 0a                                      beq #0x8a1904
008a18e8  00 00 50 e3                                      cmp r0, #0
008a18ec  04 00 00 0a                                      beq #0x8a1904
008a18f0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
008a18f4  01 10 60 e0                                      rsb r1, r0, r1
008a18f8  80 00 51 e3                                      cmp r1, #0x80
008a18fc  52 00 00 8a                                      bhi #0x8a1a4c
008a1900  8c 72 00 eb                                      bl #0x8be338
008a1904  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1908  8d ff ff ea                                      b #0x8a1744
008a190c  08 00 a0 e1                                      mov r0, r8
008a1910  66 b2 e9 eb                                      bl #0x30e2b0
008a1914  24 ff ff ea                                      b #0x8a15ac
008a1918  00 c0 84 e0                                      add ip, r4, r0
008a191c  08 00 5a e1                                      cmp sl, r8
008a1920  04 00 5c 11                                      cmpne ip, r4
008a1924  06 00 00 1a                                      bne #0x8a1944
008a1928  08 00 a0 e1                                      mov r0, r8
008a192c  00 00 5a e1                                      cmp sl, r0
008a1930  90 ff ff 0a                                      beq #0x8a1778
008a1934  08 00 50 e0                                      subs r0, r0, r8
008a1938  04 00 8d e5                                      str r0, [sp, #4]
008a193c  54 ff ff 5a                                      bpl #0x8a1694
008a1940  8c ff ff ea                                      b #0x8a1778
008a1944  01 30 84 e2                                      add r3, r4, #1
008a1948  03 00 5c e1                                      cmp ip, r3
008a194c  32 00 00 0a                                      beq #0x8a1a1c
008a1950  02 30 84 e2                                      add r3, r4, #2
008a1954  04 80 8d e5                                      str r8, [sp, #4]
008a1958  0c 30 8d e5                                      str r3, [sp, #0xc]
008a195c  04 30 9d e5                                      ldr r3, [sp, #4]
008a1960  d0 2a dd e1                                      ldrsb r2, [sp, #0xa0]
008a1964  01 e0 88 e2                                      add lr, r8, #1
008a1968  03 00 5a e1                                      cmp sl, r3
008a196c  08 20 8d e5                                      str r2, [sp, #8]
008a1970  0a 00 00 0a                                      beq #0x8a19a0
008a1974  d1 30 5e e1                                      ldrsb r3, [lr, #-1]
008a1978  08 20 9d e5                                      ldr r2, [sp, #8]
008a197c  02 00 53 e1                                      cmp r3, r2
008a1980  36 00 00 0a                                      beq #0x8a1a60
008a1984  04 20 9d e5                                      ldr r2, [sp, #4]
008a1988  01 e0 8e e2                                      add lr, lr, #1
008a198c  01 20 82 e2                                      add r2, r2, #1
008a1990  04 20 8d e5                                      str r2, [sp, #4]
008a1994  04 30 9d e5                                      ldr r3, [sp, #4]
008a1998  03 00 5a e1                                      cmp sl, r3
008a199c  f4 ff ff 1a                                      bne #0x8a1974
008a19a0  0a 00 a0 e1                                      mov r0, sl
008a19a4  e0 ff ff ea                                      b #0x8a192c
008a19a8  68 02 9f e5                                      ldr r0, [pc, #0x268]
008a19ac  00 00 8f e0                                      add r0, pc, r0
008a19b0  5c 72 00 eb                                      bl #0x8be328
008a19b4  52 ff ff ea                                      b #0x8a1704
008a19b8  0c 00 56 e1                                      cmp r6, ip
008a19bc  0c 30 a0 e1                                      mov r3, ip
008a19c0  10 ff ff 0a                                      beq #0x8a1608
008a19c4  0b 20 a0 e1                                      mov r2, fp
008a19c8  05 00 00 ea                                      b #0x8a19e4
008a19cc  08 00 52 e1                                      cmp r2, r8
008a19d0  79 00 00 0a                                      beq #0x8a1bbc
008a19d4  01 30 83 e2                                      add r3, r3, #1
008a19d8  06 00 53 e1                                      cmp r3, r6
008a19dc  01 20 82 e2                                      add r2, r2, #1
008a19e0  09 ff ff 0a                                      beq #0x8a160c
008a19e4  d0 00 d3 e1                                      ldrsb r0, [r3]
008a19e8  d1 10 52 e1                                      ldrsb r1, [r2, #-1]
008a19ec  01 00 50 e1                                      cmp r0, r1
008a19f0  f5 ff ff 0a                                      beq #0x8a19cc
008a19f4  01 c0 8c e2                                      add ip, ip, #1
008a19f8  fc fe ff ea                                      b #0x8a15f0
008a19fc  01 10 89 e2                                      add r1, sb, #1
008a1a00  d1 00 51 e1                                      ldrsb r0, [r1, #-1]
008a1a04  0d 00 50 e3                                      cmp r0, #0xd
008a1a08  25 00 00 0a                                      beq #0x8a1aa4
008a1a0c  01 00 53 e1                                      cmp r3, r1
008a1a10  01 10 81 e2                                      add r1, r1, #1
008a1a14  f9 ff ff 1a                                      bne #0x8a1a00
008a1a18  85 ff ff ea                                      b #0x8a1834
008a1a1c  d0 30 d8 e1                                      ldrsb r3, [r8]
008a1a20  d0 2a dd e1                                      ldrsb r2, [sp, #0xa0]
008a1a24  02 00 53 e1                                      cmp r3, r2
008a1a28  08 00 a0 11                                      movne r0, r8
008a1a2c  bd ff ff 0a                                      beq #0x8a1928
008a1a30  01 00 80 e2                                      add r0, r0, #1
008a1a34  0a 00 50 e1                                      cmp r0, sl
008a1a38  bb ff ff 0a                                      beq #0x8a192c
008a1a3c  d0 30 d0 e1                                      ldrsb r3, [r0]
008a1a40  02 00 53 e1                                      cmp r3, r2
008a1a44  f9 ff ff 1a                                      bne #0x8a1a30
008a1a48  b7 ff ff ea                                      b #0x8a192c
008a1a4c  17 b2 e9 eb                                      bl #0x30e2b0
008a1a50  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1a54  3a ff ff ea                                      b #0x8a1744
008a1a58  14 b2 e9 eb                                      bl #0x30e2b0
008a1a5c  9b ff ff ea                                      b #0x8a18d0
008a1a60  0e 00 5a e1                                      cmp sl, lr
008a1a64  0e 00 a0 e1                                      mov r0, lr
008a1a68  cc ff ff 0a                                      beq #0x8a19a0
008a1a6c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008a1a70  03 00 00 ea                                      b #0x8a1a84
008a1a74  01 00 80 e2                                      add r0, r0, #1
008a1a78  0a 00 50 e1                                      cmp r0, sl
008a1a7c  01 30 83 e2                                      add r3, r3, #1
008a1a80  a9 ff ff 0a                                      beq #0x8a192c
008a1a84  d0 10 d0 e1                                      ldrsb r1, [r0]
008a1a88  d1 20 53 e1                                      ldrsb r2, [r3, #-1]
008a1a8c  02 00 51 e1                                      cmp r1, r2
008a1a90  bb ff ff 1a                                      bne #0x8a1984
008a1a94  0c 00 53 e1                                      cmp r3, ip
008a1a98  f5 ff ff 1a                                      bne #0x8a1a74
008a1a9c  04 00 9d e5                                      ldr r0, [sp, #4]
008a1aa0  a1 ff ff ea                                      b #0x8a192c
008a1aa4  03 00 51 e1                                      cmp r1, r3
008a1aa8  01 b0 a0 e1                                      mov fp, r1
008a1aac  61 ff ff 0a                                      beq #0x8a1838
008a1ab0  d0 00 d1 e1                                      ldrsb r0, [r1]
008a1ab4  0a 00 50 e3                                      cmp r0, #0xa
008a1ab8  4d 00 00 1a                                      bne #0x8a1bf4
008a1abc  01 b0 41 e2                                      sub fp, r1, #1
008a1ac0  5c ff ff ea                                      b #0x8a1838
008a1ac4  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1ac8  00 a0 e0 e3                                      mvn sl, #0
008a1acc  1c ff ff ea                                      b #0x8a1744
008a1ad0  00 c0 89 e0                                      add ip, sb, r0
008a1ad4  08 00 5a e1                                      cmp sl, r8
008a1ad8  09 00 5c 11                                      cmpne ip, sb
008a1adc  14 00 00 0a                                      beq #0x8a1b34
008a1ae0  01 30 89 e2                                      add r3, sb, #1
008a1ae4  03 00 5c e1                                      cmp ip, r3
008a1ae8  35 00 00 0a                                      beq #0x8a1bc4
008a1aec  dc 38 dd e1                                      ldrsb r3, [sp, #0x8c]
008a1af0  08 b0 a0 e1                                      mov fp, r8
008a1af4  02 20 89 e2                                      add r2, sb, #2
008a1af8  0b 00 5a e1                                      cmp sl, fp
008a1afc  01 40 88 e2                                      add r4, r8, #1
008a1b00  04 30 8d e5                                      str r3, [sp, #4]
008a1b04  08 20 8d e5                                      str r2, [sp, #8]
008a1b08  07 00 00 0a                                      beq #0x8a1b2c
008a1b0c  d1 30 54 e1                                      ldrsb r3, [r4, #-1]
008a1b10  04 20 9d e5                                      ldr r2, [sp, #4]
008a1b14  02 00 53 e1                                      cmp r3, r2
008a1b18  16 00 00 0a                                      beq #0x8a1b78
008a1b1c  01 b0 8b e2                                      add fp, fp, #1
008a1b20  0b 00 5a e1                                      cmp sl, fp
008a1b24  01 40 84 e2                                      add r4, r4, #1
008a1b28  f7 ff ff 1a                                      bne #0x8a1b0c
008a1b2c  0a 20 a0 e1                                      mov r2, sl
008a1b30  00 00 00 ea                                      b #0x8a1b38
008a1b34  08 20 a0 e1                                      mov r2, r8
008a1b38  02 00 5a e1                                      cmp sl, r2
008a1b3c  11 ff ff 0a                                      beq #0x8a1788
008a1b40  08 40 52 e0                                      subs r4, r2, r8
008a1b44  15 ff ff 5a                                      bpl #0x8a17a0
008a1b48  00 a0 a0 e3                                      mov sl, #0
008a1b4c  fc fe ff ea                                      b #0x8a1744
008a1b50  09 00 a0 e1                                      mov r0, sb
008a1b54  d5 b1 e9 eb                                      bl #0x30e2b0
008a1b58  00 a0 e0 e3                                      mvn sl, #0
008a1b5c  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1b60  f7 fe ff ea                                      b #0x8a1744
008a1b64  08 00 a0 e1                                      mov r0, r8
008a1b68  8f c7 e9 eb                                      bl #0x3139ac
008a1b6c  00 a0 e0 e3                                      mvn sl, #0
008a1b70  88 80 9d e5                                      ldr r8, [sp, #0x88]
008a1b74  f2 fe ff ea                                      b #0x8a1744
008a1b78  04 00 5a e1                                      cmp sl, r4
008a1b7c  04 20 a0 e1                                      mov r2, r4
008a1b80  e9 ff ff 0a                                      beq #0x8a1b2c
008a1b84  08 30 9d e5                                      ldr r3, [sp, #8]
008a1b88  03 00 00 ea                                      b #0x8a1b9c
008a1b8c  01 20 82 e2                                      add r2, r2, #1
008a1b90  0a 00 52 e1                                      cmp r2, sl
008a1b94  01 30 83 e2                                      add r3, r3, #1
008a1b98  e6 ff ff 0a                                      beq #0x8a1b38
008a1b9c  d0 00 d2 e1                                      ldrsb r0, [r2]
008a1ba0  d1 10 53 e1                                      ldrsb r1, [r3, #-1]
008a1ba4  01 00 50 e1                                      cmp r0, r1
008a1ba8  db ff ff 1a                                      bne #0x8a1b1c
008a1bac  0c 00 53 e1                                      cmp r3, ip
008a1bb0  f5 ff ff 1a                                      bne #0x8a1b8c
008a1bb4  0b 20 a0 e1                                      mov r2, fp
008a1bb8  de ff ff ea                                      b #0x8a1b38
008a1bbc  01 30 4c e2                                      sub r3, ip, #1
008a1bc0  91 fe ff ea                                      b #0x8a160c
008a1bc4  d0 30 d8 e1                                      ldrsb r3, [r8]
008a1bc8  dc 18 dd e1                                      ldrsb r1, [sp, #0x8c]
008a1bcc  01 00 53 e1                                      cmp r3, r1
008a1bd0  08 20 a0 11                                      movne r2, r8
008a1bd4  d6 ff ff 0a                                      beq #0x8a1b34
008a1bd8  01 20 82 e2                                      add r2, r2, #1
008a1bdc  0a 00 52 e1                                      cmp r2, sl
008a1be0  d4 ff ff 0a                                      beq #0x8a1b38
008a1be4  d0 30 d2 e1                                      ldrsb r3, [r2]
008a1be8  01 00 53 e1                                      cmp r3, r1
008a1bec  f9 ff ff 1a                                      bne #0x8a1bd8
008a1bf0  d0 ff ff ea                                      b #0x8a1b38
008a1bf4  01 10 81 e2                                      add r1, r1, #1
008a1bf8  80 ff ff ea                                      b #0x8a1a00
008a1bfc  c3 b1 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008a1c00  4c 35 0f 00 ac 40 00 00 40 b8 06 00 30 b8 06 00  .byte 0x4c, 0x35, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0xb8, 0x06, 0x00, 0x30, 0xb8, 0x06, 0x00
008a1c10  7c b3 06 00 34 e8 01 00 ac ca 01 00              .byte 0x7c, 0xb3, 0x06, 0x00, 0x34, 0xe8, 0x01, 0x00, 0xac, 0xca, 0x01, 0x00

; FUNCTION 0x008a1c1c, declared_size=1496, range_size=1496, mode=arm
; class-group: LCXPlayerSocket
; alias: _ZN15LCXPlayerSocket3RunEv
; demangled: LCXPlayerSocket::Run()
; decoder-mode: arm
008a1c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
008a1c20  04 10 90 e5                                      ldr r1, [r0, #4]
008a1c24  00 40 a0 e1                                      mov r4, r0
008a1c28  00 00 51 e3                                      cmp r1, #0
008a1c2c  07 00 51 13                                      cmpne r1, #7
008a1c30  03 00 00 1a                                      bne #0x8a1c44
008a1c34  64 05 9f e5                                      ldr r0, [pc, #0x564]
008a1c38  00 00 8f e0                                      add r0, pc, r0
008a1c3c  70 40 bd e8                                      pop {r4, r5, r6, lr}
008a1c40  af e9 ff ea                                      b #0x89c304
008a1c44  08 00 51 e3                                      cmp r1, #8
008a1c48  f9 ff ff 0a                                      beq #0x8a1c34
008a1c4c  01 10 41 e2                                      sub r1, r1, #1
008a1c50  04 00 51 e3                                      cmp r1, #4
008a1c54  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
008a1c58  27 00 00 ea                                      b #0x8a1cfc
008a1c5c  b0 00 00 ea                                      b #0x8a1f24
008a1c60  96 00 00 ea                                      b #0x8a1ec0
008a1c64  01 00 00 ea                                      b #0x8a1c70
008a1c68  3c 00 00 ea                                      b #0x8a1d60
008a1c6c  23 00 00 ea                                      b #0x8a1d00
008a1c70  00 30 94 e5                                      ldr r3, [r4]
008a1c74  04 00 a0 e1                                      mov r0, r4
008a1c78  01 10 a0 e3                                      mov r1, #1
008a1c7c  0f e0 a0 e1                                      mov lr, pc
008a1c80  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008a1c84  00 00 50 e3                                      cmp r0, #0
008a1c88  18 01 00 ba                                      blt #0x8a20f0
008a1c8c  1a 00 00 0a                                      beq #0x8a1cfc
008a1c90  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a1c94  03 00 a0 e1                                      mov r0, r3
008a1c98  00 30 93 e5                                      ldr r3, [r3]
008a1c9c  0f e0 a0 e1                                      mov lr, pc
008a1ca0  04 f0 93 e5                                      ldr pc, [r3, #4]
008a1ca4  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a1ca8  00 50 a0 e1                                      mov r5, r0
008a1cac  03 00 a0 e1                                      mov r0, r3
008a1cb0  00 30 93 e5                                      ldr r3, [r3]
008a1cb4  0f e0 a0 e1                                      mov lr, pc
008a1cb8  00 f0 93 e5                                      ldr pc, [r3]
008a1cbc  4c 38 94 e5                                      ldr r3, [r4, #0x84c]
008a1cc0  05 20 63 e0                                      rsb r2, r3, r5
008a1cc4  02 0b 52 e3                                      cmp r2, #0x800
008a1cc8  03 10 80 e0                                      add r1, r0, r3
008a1ccc  02 2b a0 c3                                      movgt r2, #0x800
008a1cd0  00 30 94 e5                                      ldr r3, [r4]
008a1cd4  04 00 a0 e1                                      mov r0, r4
008a1cd8  0f e0 a0 e1                                      mov lr, pc
008a1cdc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
008a1ce0  00 00 50 e3                                      cmp r0, #0
008a1ce4  25 01 00 ba                                      blt #0x8a2180
008a1ce8  4c 38 94 e5                                      ldr r3, [r4, #0x84c]
008a1cec  03 00 80 e0                                      add r0, r0, r3
008a1cf0  00 00 55 e1                                      cmp r5, r0
008a1cf4  4c 08 84 e5                                      str r0, [r4, #0x84c]
008a1cf8  ae 00 00 0a                                      beq #0x8a1fb8
008a1cfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a1d00  9c 04 9f e5                                      ldr r0, [pc, #0x49c]
008a1d04  00 00 8f e0                                      add r0, pc, r0
008a1d08  7d e9 ff eb                                      bl #0x89c304
008a1d0c  00 30 94 e5                                      ldr r3, [r4]
008a1d10  04 00 a0 e1                                      mov r0, r4
008a1d14  0f e0 a0 e1                                      mov lr, pc
008a1d18  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008a1d1c  40 18 94 e5                                      ldr r1, [r4, #0x840]
008a1d20  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a1d24  3c 28 94 e5                                      ldr r2, [r4, #0x83c]
008a1d28  03 00 a0 e1                                      mov r0, r3
008a1d2c  02 20 61 e0                                      rsb r2, r1, r2
008a1d30  00 30 93 e5                                      ldr r3, [r3]
008a1d34  0f e0 a0 e1                                      mov lr, pc
008a1d38  08 f0 93 e5                                      ldr pc, [r3, #8]
008a1d3c  64 14 9f e5                                      ldr r1, [pc, #0x464]
008a1d40  82 0e 84 e2                                      add r0, r4, #0x820
008a1d44  0c 00 80 e2                                      add r0, r0, #0xc
008a1d48  01 10 8f e0                                      add r1, pc, r1
008a1d4c  01 20 a0 e1                                      mov r2, r1
008a1d50  22 bb e9 eb                                      bl #0x3109e0
008a1d54  06 30 a0 e3                                      mov r3, #6
008a1d58  04 30 84 e5                                      str r3, [r4, #4]
008a1d5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a1d60  00 30 94 e5                                      ldr r3, [r4]
008a1d64  04 00 a0 e1                                      mov r0, r4
008a1d68  00 10 a0 e3                                      mov r1, #0
008a1d6c  0f e0 a0 e1                                      mov lr, pc
008a1d70  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008a1d74  00 00 50 e3                                      cmp r0, #0
008a1d78  df ff ff da                                      ble #0x8a1cfc
008a1d7c  28 04 9f e5                                      ldr r0, [pc, #0x428]
008a1d80  1c 50 84 e2                                      add r5, r4, #0x1c
008a1d84  00 00 8f e0                                      add r0, pc, r0
008a1d88  5d e9 ff eb                                      bl #0x89c304
008a1d8c  05 00 a0 e1                                      mov r0, r5
008a1d90  00 10 a0 e3                                      mov r1, #0
008a1d94  02 2b a0 e3                                      mov r2, #0x800
008a1d98  58 ec ff eb                                      bl #0x89cf00
008a1d9c  00 30 94 e5                                      ldr r3, [r4]
008a1da0  04 00 a0 e1                                      mov r0, r4
008a1da4  05 10 a0 e1                                      mov r1, r5
008a1da8  02 2b a0 e3                                      mov r2, #0x800
008a1dac  0f e0 a0 e1                                      mov lr, pc
008a1db0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
008a1db4  00 00 50 e3                                      cmp r0, #0
008a1db8  db 00 00 ba                                      blt #0x8a212c
008a1dbc  64 00 00 0a                                      beq #0x8a1f54
008a1dc0  82 6e 84 e2                                      add r6, r4, #0x820
008a1dc4  00 20 84 e0                                      add r2, r4, r0
008a1dc8  0c 60 86 e2                                      add r6, r6, #0xc
008a1dcc  05 10 a0 e1                                      mov r1, r5
008a1dd0  1c 20 82 e2                                      add r2, r2, #0x1c
008a1dd4  06 00 a0 e1                                      mov r0, r6
008a1dd8  89 ba e9 eb                                      bl #0x310804
008a1ddc  45 38 d4 e5                                      ldrb r3, [r4, #0x845]
008a1de0  00 00 53 e3                                      cmp r3, #0
008a1de4  1a 00 00 0a                                      beq #0x8a1e54
008a1de8  c0 53 9f e5                                      ldr r5, [pc, #0x3c0]
008a1dec  06 00 a0 e1                                      mov r0, r6
008a1df0  00 20 a0 e3                                      mov r2, #0
008a1df4  05 50 8f e0                                      add r5, pc, r5
008a1df8  05 10 a0 e1                                      mov r1, r5
008a1dfc  de 38 fe eb                                      bl #0x83017c
008a1e00  00 00 50 e3                                      cmp r0, #0
008a1e04  bc ff ff da                                      ble #0x8a1cfc
008a1e08  05 10 a0 e1                                      mov r1, r5
008a1e0c  00 20 a0 e3                                      mov r2, #0
008a1e10  06 00 a0 e1                                      mov r0, r6
008a1e14  d8 38 fe eb                                      bl #0x83017c
008a1e18  94 13 9f e5                                      ldr r1, [pc, #0x394]
008a1e1c  04 00 a0 e1                                      mov r0, r4
008a1e20  01 10 8f e0                                      add r1, pc, r1
008a1e24  e3 f9 ff eb                                      bl #0x8a05b8
008a1e28  00 00 50 e3                                      cmp r0, #0
008a1e2c  04 00 00 ba                                      blt #0x8a1e44
008a1e30  04 00 a0 e1                                      mov r0, r4
008a1e34  be fd ff eb                                      bl #0x8a1534
008a1e38  01 30 a0 e3                                      mov r3, #1
008a1e3c  48 08 84 e5                                      str r0, [r4, #0x848]
008a1e40  46 38 c4 e5                                      strb r3, [r4, #0x846]
008a1e44  04 00 a0 e1                                      mov r0, r4
008a1e48  af fa ff eb                                      bl #0x8a090c
008a1e4c  00 30 a0 e3                                      mov r3, #0
008a1e50  45 38 c4 e5                                      strb r3, [r4, #0x845]
008a1e54  3c 58 94 e5                                      ldr r5, [r4, #0x83c]
008a1e58  40 28 94 e5                                      ldr r2, [r4, #0x840]
008a1e5c  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a1e60  05 50 62 e0                                      rsb r5, r2, r5
008a1e64  03 00 a0 e1                                      mov r0, r3
008a1e68  05 10 a0 e1                                      mov r1, r5
008a1e6c  00 30 93 e5                                      ldr r3, [r3]
008a1e70  0f e0 a0 e1                                      mov lr, pc
008a1e74  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008a1e78  46 38 d4 e5                                      ldrb r3, [r4, #0x846]
008a1e7c  00 00 53 e3                                      cmp r3, #0
008a1e80  9d ff ff 0a                                      beq #0x8a1cfc
008a1e84  48 18 94 e5                                      ldr r1, [r4, #0x848]
008a1e88  05 00 51 e1                                      cmp r1, r5
008a1e8c  9a ff ff 1a                                      bne #0x8a1cfc
008a1e90  20 03 9f e5                                      ldr r0, [pc, #0x320]
008a1e94  05 30 a0 e3                                      mov r3, #5
008a1e98  04 30 84 e5                                      str r3, [r4, #4]
008a1e9c  00 00 8f e0                                      add r0, pc, r0
008a1ea0  17 e9 ff eb                                      bl #0x89c304
008a1ea4  3f ed ff eb                                      bl #0x89d3a8
008a1ea8  54 38 94 e5                                      ldr r3, [r4, #0x854]
008a1eac  00 10 63 e0                                      rsb r1, r3, r0
008a1eb0  04 03 9f e5                                      ldr r0, [pc, #0x304]
008a1eb4  00 00 8f e0                                      add r0, pc, r0
008a1eb8  70 40 bd e8                                      pop {r4, r5, r6, lr}
008a1ebc  10 e9 ff ea                                      b #0x89c304
008a1ec0  00 30 94 e5                                      ldr r3, [r4]
008a1ec4  04 00 a0 e1                                      mov r0, r4
008a1ec8  0f e0 a0 e1                                      mov lr, pc
008a1ecc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
008a1ed0  00 50 50 e2                                      subs r5, r0, #0
008a1ed4  5e 00 00 1a                                      bne #0x8a2054
008a1ed8  58 38 94 e5                                      ldr r3, [r4, #0x858]
008a1edc  01 00 53 e3                                      cmp r3, #1
008a1ee0  85 ff ff 0a                                      beq #0x8a1cfc
008a1ee4  00 30 94 e5                                      ldr r3, [r4]
008a1ee8  04 00 a0 e1                                      mov r0, r4
008a1eec  0f e0 a0 e1                                      mov lr, pc
008a1ef0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a1ef4  00 10 a0 e1                                      mov r1, r0
008a1ef8  c0 02 9f e5                                      ldr r0, [pc, #0x2c0]
008a1efc  00 00 8f e0                                      add r0, pc, r0
008a1f00  ff e8 ff eb                                      bl #0x89c304
008a1f04  00 30 94 e5                                      ldr r3, [r4]
008a1f08  04 00 a0 e1                                      mov r0, r4
008a1f0c  0f e0 a0 e1                                      mov lr, pc
008a1f10  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008a1f14  07 30 a0 e3                                      mov r3, #7
008a1f18  58 58 84 e5                                      str r5, [r4, #0x858]
008a1f1c  04 30 84 e5                                      str r3, [r4, #4]
008a1f20  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a1f24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008a1f28  00 00 53 e3                                      cmp r3, #0
008a1f2c  53 00 00 0a                                      beq #0x8a2080
008a1f30  00 30 94 e5                                      ldr r3, [r4]
008a1f34  04 00 a0 e1                                      mov r0, r4
008a1f38  0f e0 a0 e1                                      mov lr, pc
008a1f3c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008a1f40  00 00 50 e3                                      cmp r0, #0
008a1f44  39 00 00 0a                                      beq #0x8a2030
008a1f48  02 30 a0 e3                                      mov r3, #2
008a1f4c  04 30 84 e5                                      str r3, [r4, #4]
008a1f50  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a1f54  68 02 9f e5                                      ldr r0, [pc, #0x268]
008a1f58  00 00 8f e0                                      add r0, pc, r0
008a1f5c  e8 e8 ff eb                                      bl #0x89c304
008a1f60  46 38 d4 e5                                      ldrb r3, [r4, #0x846]
008a1f64  00 00 53 e3                                      cmp r3, #0
008a1f68  01 00 00 1a                                      bne #0x8a1f74
008a1f6c  04 00 a0 e1                                      mov r0, r4
008a1f70  de fa ff eb                                      bl #0x8a0af0
008a1f74  40 18 94 e5                                      ldr r1, [r4, #0x840]
008a1f78  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a1f7c  3c 28 94 e5                                      ldr r2, [r4, #0x83c]
008a1f80  03 00 a0 e1                                      mov r0, r3
008a1f84  02 20 61 e0                                      rsb r2, r1, r2
008a1f88  00 30 93 e5                                      ldr r3, [r3]
008a1f8c  0f e0 a0 e1                                      mov lr, pc
008a1f90  08 f0 93 e5                                      ldr pc, [r3, #8]
008a1f94  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
008a1f98  82 0e 84 e2                                      add r0, r4, #0x820
008a1f9c  0c 00 80 e2                                      add r0, r0, #0xc
008a1fa0  01 10 8f e0                                      add r1, pc, r1
008a1fa4  01 20 a0 e1                                      mov r2, r1
008a1fa8  8c ba e9 eb                                      bl #0x3109e0
008a1fac  06 30 a0 e3                                      mov r3, #6
008a1fb0  04 30 84 e5                                      str r3, [r4, #4]
008a1fb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a1fb8  0c 02 9f e5                                      ldr r0, [pc, #0x20c]
008a1fbc  00 60 a0 e3                                      mov r6, #0
008a1fc0  00 00 8f e0                                      add r0, pc, r0
008a1fc4  ce e8 ff eb                                      bl #0x89c304
008a1fc8  00 12 9f e5                                      ldr r1, [pc, #0x200]
008a1fcc  82 0e 84 e2                                      add r0, r4, #0x820
008a1fd0  1c 68 84 e5                                      str r6, [r4, #0x81c]
008a1fd4  01 10 8f e0                                      add r1, pc, r1
008a1fd8  01 20 a0 e1                                      mov r2, r1
008a1fdc  0c 00 80 e2                                      add r0, r0, #0xc
008a1fe0  7e ba e9 eb                                      bl #0x3109e0
008a1fe4  e8 01 9f e5                                      ldr r0, [pc, #0x1e8]
008a1fe8  01 30 a0 e3                                      mov r3, #1
008a1fec  45 38 c4 e5                                      strb r3, [r4, #0x845]
008a1ff0  05 10 a0 e1                                      mov r1, r5
008a1ff4  00 00 8f e0                                      add r0, pc, r0
008a1ff8  46 68 c4 e5                                      strb r6, [r4, #0x846]
008a1ffc  44 68 c4 e5                                      strb r6, [r4, #0x844]
008a2000  bf e8 ff eb                                      bl #0x89c304
008a2004  e7 ec ff eb                                      bl #0x89d3a8
008a2008  50 38 94 e5                                      ldr r3, [r4, #0x850]
008a200c  00 10 63 e0                                      rsb r1, r3, r0
008a2010  c0 01 9f e5                                      ldr r0, [pc, #0x1c0]
008a2014  00 00 8f e0                                      add r0, pc, r0
008a2018  b9 e8 ff eb                                      bl #0x89c304
008a201c  e1 ec ff eb                                      bl #0x89d3a8
008a2020  04 30 a0 e3                                      mov r3, #4
008a2024  04 30 84 e5                                      str r3, [r4, #4]
008a2028  54 08 84 e5                                      str r0, [r4, #0x854]
008a202c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a2030  04 00 a0 e1                                      mov r0, r4
008a2034  00 30 94 e5                                      ldr r3, [r4]
008a2038  0f e0 a0 e1                                      mov lr, pc
008a203c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a2040  00 10 a0 e1                                      mov r1, r0
008a2044  90 01 9f e5                                      ldr r0, [pc, #0x190]
008a2048  00 00 8f e0                                      add r0, pc, r0
008a204c  70 40 bd e8                                      pop {r4, r5, r6, lr}
008a2050  ab e8 ff ea                                      b #0x89c304
008a2054  84 01 9f e5                                      ldr r0, [pc, #0x184]
008a2058  00 50 a0 e3                                      mov r5, #0
008a205c  00 00 8f e0                                      add r0, pc, r0
008a2060  a7 e8 ff eb                                      bl #0x89c304
008a2064  4c 58 84 e5                                      str r5, [r4, #0x84c]
008a2068  ce ec ff eb                                      bl #0x89d3a8
008a206c  03 30 a0 e3                                      mov r3, #3
008a2070  04 30 84 e5                                      str r3, [r4, #4]
008a2074  50 08 84 e5                                      str r0, [r4, #0x850]
008a2078  58 58 84 e5                                      str r5, [r4, #0x858]
008a207c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a2080  00 30 94 e5                                      ldr r3, [r4]
008a2084  04 00 a0 e1                                      mov r0, r4
008a2088  14 10 94 e5                                      ldr r1, [r4, #0x14]
008a208c  0f e0 a0 e1                                      mov lr, pc
008a2090  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008a2094  00 00 50 e3                                      cmp r0, #0
008a2098  00 50 a0 e1                                      mov r5, r0
008a209c  0c 00 84 e5                                      str r0, [r4, #0xc]
008a20a0  a2 ff ff 1a                                      bne #0x8a1f30
008a20a4  bf ec ff eb                                      bl #0x89d3a8
008a20a8  64 28 94 e5                                      ldr r2, [r4, #0x864]
008a20ac  27 3c a0 e3                                      mov r3, #0x2700
008a20b0  0f 30 83 e2                                      add r3, r3, #0xf
008a20b4  00 20 62 e0                                      rsb r2, r2, r0
008a20b8  03 00 52 e1                                      cmp r2, r3
008a20bc  0e ff ff 9a                                      bls #0x8a1cfc
008a20c0  00 30 94 e5                                      ldr r3, [r4]
008a20c4  04 00 a0 e1                                      mov r0, r4
008a20c8  0f e0 a0 e1                                      mov lr, pc
008a20cc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a20d0  00 10 a0 e1                                      mov r1, r0
008a20d4  08 01 9f e5                                      ldr r0, [pc, #0x108]
008a20d8  00 00 8f e0                                      add r0, pc, r0
008a20dc  88 e8 ff eb                                      bl #0x89c304
008a20e0  07 30 a0 e3                                      mov r3, #7
008a20e4  04 30 84 e5                                      str r3, [r4, #4]
008a20e8  5c 58 84 e5                                      str r5, [r4, #0x85c]
008a20ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a20f0  00 30 94 e5                                      ldr r3, [r4]
008a20f4  04 00 a0 e1                                      mov r0, r4
008a20f8  0f e0 a0 e1                                      mov lr, pc
008a20fc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a2100  00 10 a0 e1                                      mov r1, r0
008a2104  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
008a2108  00 00 8f e0                                      add r0, pc, r0
008a210c  7c e8 ff eb                                      bl #0x89c304
008a2110  00 30 94 e5                                      ldr r3, [r4]
008a2114  04 00 a0 e1                                      mov r0, r4
008a2118  0f e0 a0 e1                                      mov lr, pc
008a211c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008a2120  07 30 a0 e3                                      mov r3, #7
008a2124  04 30 84 e5                                      str r3, [r4, #4]
008a2128  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a212c  00 30 94 e5                                      ldr r3, [r4]
008a2130  04 00 a0 e1                                      mov r0, r4
008a2134  0f e0 a0 e1                                      mov lr, pc
008a2138  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a213c  00 10 a0 e1                                      mov r1, r0
008a2140  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
008a2144  00 00 8f e0                                      add r0, pc, r0
008a2148  6d e8 ff eb                                      bl #0x89c304
008a214c  00 30 94 e5                                      ldr r3, [r4]
008a2150  04 00 a0 e1                                      mov r0, r4
008a2154  0f e0 a0 e1                                      mov lr, pc
008a2158  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008a215c  18 30 94 e5                                      ldr r3, [r4, #0x18]
008a2160  07 20 a0 e3                                      mov r2, #7
008a2164  04 20 84 e5                                      str r2, [r4, #4]
008a2168  03 00 a0 e1                                      mov r0, r3
008a216c  00 10 a0 e3                                      mov r1, #0
008a2170  00 30 93 e5                                      ldr r3, [r3]
008a2174  0f e0 a0 e1                                      mov lr, pc
008a2178  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008a217c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008a2180  00 30 94 e5                                      ldr r3, [r4]
008a2184  04 00 a0 e1                                      mov r0, r4
008a2188  0f e0 a0 e1                                      mov lr, pc
008a218c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008a2190  00 10 a0 e1                                      mov r1, r0
008a2194  54 00 9f e5                                      ldr r0, [pc, #0x54]
008a2198  00 00 8f e0                                      add r0, pc, r0
008a219c  da ff ff ea                                      b #0x8a210c
; mapping-symbol data/literal pool
008a21a0  80 34 07 00 f4 b1 06 00 c0 9a 02 00 44 b1 06 00  .byte 0x80, 0x34, 0x07, 0x00, 0xf4, 0xb1, 0x06, 0x00, 0xc0, 0x9a, 0x02, 0x00, 0x44, 0xb1, 0x06, 0x00
008a21b0  6c ab 06 00 00 b1 06 00 94 b0 06 00 ac b0 06 00  .byte 0x6c, 0xab, 0x06, 0x00, 0x00, 0xb1, 0x06, 0x00, 0x94, 0xb0, 0x06, 0x00, 0xac, 0xb0, 0x06, 0x00
008a21c0  04 af 06 00 a0 af 06 00 68 98 02 00 80 ae 06 00  .byte 0x04, 0xaf, 0x06, 0x00, 0xa0, 0xaf, 0x06, 0x00, 0x68, 0x98, 0x02, 0x00, 0x80, 0xae, 0x06, 0x00
008a21d0  34 98 02 00 74 ae 06 00 84 ae 06 00 b8 ad 06 00  .byte 0x34, 0x98, 0x02, 0x00, 0x74, 0xae, 0x06, 0x00, 0x84, 0xae, 0x06, 0x00, 0xb8, 0xad, 0x06, 0x00
008a21e0  c4 ad 06 00 18 30 07 00 f8 ac 06 00 bc ac 06 00  .byte 0xc4, 0xad, 0x06, 0x00, 0x18, 0x30, 0x07, 0x00, 0xf8, 0xac, 0x06, 0x00, 0xbc, 0xac, 0x06, 0x00
008a21f0  68 ac 06 00                                      .byte 0x68, 0xac, 0x06, 0x00
