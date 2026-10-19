; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fde40, declared_size=72, range_size=72, mode=arm
; class-group: CEvent
; alias: _ZN6CEventD1Ev
; demangled: CEvent::~CEvent()
; decoder-mode: arm
007fde40  10 40 2d e9                                      push {r4, lr}
007fde44  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fde48  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fde4c  00 40 a0 e1                                      mov r4, r0
007fde50  03 30 8f e0                                      add r3, pc, r3
007fde54  08 00 90 e5                                      ldr r0, [r0, #8]
007fde58  02 20 93 e7                                      ldr r2, [r3, r2]
007fde5c  00 00 50 e3                                      cmp r0, #0
007fde60  08 20 82 e2                                      add r2, r2, #8
007fde64  00 20 84 e5                                      str r2, [r4]
007fde68  02 00 00 0a                                      beq #0x7fde78
007fde6c  73 49 ec eb                                      bl #0x310440
007fde70  00 30 a0 e3                                      mov r3, #0
007fde74  08 30 84 e5                                      str r3, [r4, #8]
007fde78  04 00 a0 e1                                      mov r0, r4
007fde7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fde80  40 6c 19 00 10 2f 00 00                          .byte 0x40, 0x6c, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00

; FUNCTION 0x007fde88, declared_size=28, range_size=28, mode=arm
; class-group: CEvent
; alias: _ZN6CEventD0Ev
; demangled: CEvent::~CEvent()
; decoder-mode: arm
007fde88  10 40 2d e9                                      push {r4, lr}
007fde8c  00 40 a0 e1                                      mov r4, r0
007fde90  ea ff ff eb                                      bl #0x7fde40
007fde94  04 00 a0 e1                                      mov r0, r4
007fde98  68 49 ec eb                                      bl #0x310440
007fde9c  04 00 a0 e1                                      mov r0, r4
007fdea0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fdea4, declared_size=72, range_size=72, mode=arm
; class-group: CEvent
; alias: _ZN6CEventD2Ev
; demangled: CEvent::~CEvent()
; decoder-mode: arm
007fdea4  10 40 2d e9                                      push {r4, lr}
007fdea8  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fdeac  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fdeb0  00 40 a0 e1                                      mov r4, r0
007fdeb4  03 30 8f e0                                      add r3, pc, r3
007fdeb8  08 00 90 e5                                      ldr r0, [r0, #8]
007fdebc  02 20 93 e7                                      ldr r2, [r3, r2]
007fdec0  00 00 50 e3                                      cmp r0, #0
007fdec4  08 20 82 e2                                      add r2, r2, #8
007fdec8  00 20 84 e5                                      str r2, [r4]
007fdecc  02 00 00 0a                                      beq #0x7fdedc
007fded0  5a 49 ec eb                                      bl #0x310440
007fded4  00 30 a0 e3                                      mov r3, #0
007fded8  08 30 84 e5                                      str r3, [r4, #8]
007fdedc  04 00 a0 e1                                      mov r0, r4
007fdee0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fdee4  dc 6b 19 00 10 2f 00 00                          .byte 0xdc, 0x6b, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00

; FUNCTION 0x007fdeec, declared_size=56, range_size=56, mode=arm
; class-group: CEvent
; alias: _ZN6CEvent9IsExpiredEj
; demangled: CEvent::IsExpired(unsigned int)
; decoder-mode: arm
007fdeec  00 00 51 e3                                      cmp r1, #0
007fdef0  10 40 2d e9                                      push {r4, lr}
007fdef4  00 40 a0 e1                                      mov r4, r0
007fdef8  01 00 00 1a                                      bne #0x7fdf04
007fdefc  01 00 a0 e1                                      mov r0, r1
007fdf00  10 80 bd e8                                      pop {r4, pc}
007fdf04  22 fe ff eb                                      bl #0x7fd794
007fdf08  10 30 94 e5                                      ldr r3, [r4, #0x10]
007fdf0c  28 00 90 e5                                      ldr r0, [r0, #0x28]
007fdf10  00 30 63 e0                                      rsb r3, r3, r0
007fdf14  63 00 53 e3                                      cmp r3, #0x63
007fdf18  00 00 a0 93                                      movls r0, #0
007fdf1c  01 00 a0 83                                      movhi r0, #1
007fdf20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fdf24, declared_size=64, range_size=64, mode=arm
; class-group: CEvent
; alias: _ZN6CEvent8CopyDataEPvi
; demangled: CEvent::CopyData(void*, int)
; decoder-mode: arm
007fdf24  00 00 51 e3                                      cmp r1, #0
007fdf28  00 00 52 13                                      cmpne r2, #0
007fdf2c  10 40 2d e9                                      push {r4, lr}
007fdf30  00 40 a0 e1                                      mov r4, r0
007fdf34  01 00 00 ca                                      bgt #0x7fdf40
007fdf38  00 00 e0 e3                                      mvn r0, #0
007fdf3c  10 80 bd e8                                      pop {r4, pc}
007fdf40  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007fdf44  03 00 52 e1                                      cmp r2, r3
007fdf48  fa ff ff ba                                      blt #0x7fdf38
007fdf4c  01 00 a0 e1                                      mov r0, r1
007fdf50  03 20 a0 e1                                      mov r2, r3
007fdf54  08 10 94 e5                                      ldr r1, [r4, #8]
007fdf58  42 42 ec eb                                      bl #0x30e868
007fdf5c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007fdf60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fdfe0, declared_size=92, range_size=92, mode=arm
; class-group: CEvent
; alias: _ZN6CEvent4InitEiPvi
; demangled: CEvent::Init(int, void*, int)
; decoder-mode: arm
007fdfe0  70 40 2d e9                                      push {r4, r5, r6, lr}
007fdfe4  04 10 80 e5                                      str r1, [r0, #4]
007fdfe8  03 60 a0 e1                                      mov r6, r3
007fdfec  00 40 a0 e1                                      mov r4, r0
007fdff0  02 50 a0 e1                                      mov r5, r2
007fdff4  e6 fd ff eb                                      bl #0x7fd794
007fdff8  28 30 90 e5                                      ldr r3, [r0, #0x28]
007fdffc  00 00 55 e3                                      cmp r5, #0
007fe000  00 00 56 13                                      cmpne r6, #0
007fe004  10 30 84 e5                                      str r3, [r4, #0x10]
007fe008  00 00 00 ca                                      bgt #0x7fe010
007fe00c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fe010  06 00 a0 e1                                      mov r0, r6
007fe014  02 10 a0 e3                                      mov r1, #2
007fe018  53 49 ec eb                                      bl #0x31056c
007fe01c  00 00 50 e3                                      cmp r0, #0
007fe020  08 00 84 e5                                      str r0, [r4, #8]
007fe024  f8 ff ff 0a                                      beq #0x7fe00c
007fe028  05 10 a0 e1                                      mov r1, r5
007fe02c  06 20 a0 e1                                      mov r2, r6
007fe030  0c 60 84 e5                                      str r6, [r4, #0xc]
007fe034  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fe038  0a 42 ec ea                                      b #0x30e868

; FUNCTION 0x007fe03c, declared_size=72, range_size=72, mode=arm
; class-group: CEvent
; alias: _ZN6CEventaSERKS_
; demangled: CEvent::operator=(CEvent const&)
; decoder-mode: arm
007fe03c  01 00 50 e1                                      cmp r0, r1
007fe040  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe044  00 40 a0 e1                                      mov r4, r0
007fe048  01 50 a0 e1                                      mov r5, r1
007fe04c  0a 00 00 0a                                      beq #0x7fe07c
007fe050  08 00 90 e5                                      ldr r0, [r0, #8]
007fe054  00 00 50 e3                                      cmp r0, #0
007fe058  03 00 00 0a                                      beq #0x7fe06c
007fe05c  f7 48 ec eb                                      bl #0x310440
007fe060  00 30 a0 e3                                      mov r3, #0
007fe064  0c 30 84 e5                                      str r3, [r4, #0xc]
007fe068  08 30 84 e5                                      str r3, [r4, #8]
007fe06c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007fe070  04 00 a0 e1                                      mov r0, r4
007fe074  06 00 95 e9                                      ldmib r5, {r1, r2}
007fe078  d8 ff ff eb                                      bl #0x7fdfe0
007fe07c  04 00 a0 e1                                      mov r0, r4
007fe080  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fe084, declared_size=80, range_size=80, mode=arm
; class-group: CEvent
; alias: _ZN6CEventC1ERKS_
; demangled: CEvent::CEvent(CEvent const&)
; decoder-mode: arm
007fe084  40 c0 9f e5                                      ldr ip, [pc, #0x40]
007fe088  40 30 9f e5                                      ldr r3, [pc, #0x40]
007fe08c  10 40 2d e9                                      push {r4, lr}
007fe090  0c c0 8f e0                                      add ip, pc, ip
007fe094  03 30 9c e7                                      ldr r3, [ip, r3]
007fe098  00 20 a0 e3                                      mov r2, #0
007fe09c  0c 20 80 e5                                      str r2, [r0, #0xc]
007fe0a0  08 30 83 e2                                      add r3, r3, #8
007fe0a4  08 20 80 e5                                      str r2, [r0, #8]
007fe0a8  00 30 80 e5                                      str r3, [r0]
007fe0ac  01 20 a0 e1                                      mov r2, r1
007fe0b0  00 40 a0 e1                                      mov r4, r0
007fe0b4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007fe0b8  08 20 92 e5                                      ldr r2, [r2, #8]
007fe0bc  04 10 91 e5                                      ldr r1, [r1, #4]
007fe0c0  c6 ff ff eb                                      bl #0x7fdfe0
007fe0c4  04 00 a0 e1                                      mov r0, r4
007fe0c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe0cc  00 6a 19 00 10 2f 00 00                          .byte 0x00, 0x6a, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00

; FUNCTION 0x007fe0d4, declared_size=80, range_size=80, mode=arm
; class-group: CEvent
; alias: _ZN6CEventC2ERKS_
; demangled: CEvent::CEvent(CEvent const&)
; decoder-mode: arm
007fe0d4  40 c0 9f e5                                      ldr ip, [pc, #0x40]
007fe0d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
007fe0dc  10 40 2d e9                                      push {r4, lr}
007fe0e0  0c c0 8f e0                                      add ip, pc, ip
007fe0e4  03 30 9c e7                                      ldr r3, [ip, r3]
007fe0e8  00 20 a0 e3                                      mov r2, #0
007fe0ec  0c 20 80 e5                                      str r2, [r0, #0xc]
007fe0f0  08 30 83 e2                                      add r3, r3, #8
007fe0f4  08 20 80 e5                                      str r2, [r0, #8]
007fe0f8  00 30 80 e5                                      str r3, [r0]
007fe0fc  01 20 a0 e1                                      mov r2, r1
007fe100  00 40 a0 e1                                      mov r4, r0
007fe104  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007fe108  08 20 92 e5                                      ldr r2, [r2, #8]
007fe10c  04 10 91 e5                                      ldr r1, [r1, #4]
007fe110  b2 ff ff eb                                      bl #0x7fdfe0
007fe114  04 00 a0 e1                                      mov r0, r4
007fe118  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe11c  b0 69 19 00 10 2f 00 00                          .byte 0xb0, 0x69, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00

; FUNCTION 0x007fe124, declared_size=64, range_size=64, mode=arm
; class-group: CEvent
; alias: _ZN6CEventC1EiPvi
; demangled: CEvent::CEvent(int, void*, int)
; decoder-mode: arm
007fe124  30 c0 9f e5                                      ldr ip, [pc, #0x30]
007fe128  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe12c  2c e0 9f e5                                      ldr lr, [pc, #0x2c]
007fe130  0c c0 8f e0                                      add ip, pc, ip
007fe134  00 50 a0 e3                                      mov r5, #0
007fe138  0e e0 9c e7                                      ldr lr, [ip, lr]
007fe13c  00 40 a0 e1                                      mov r4, r0
007fe140  0c 50 80 e5                                      str r5, [r0, #0xc]
007fe144  08 e0 8e e2                                      add lr, lr, #8
007fe148  00 e0 80 e5                                      str lr, [r0]
007fe14c  08 50 80 e5                                      str r5, [r0, #8]
007fe150  a2 ff ff eb                                      bl #0x7fdfe0
007fe154  04 00 a0 e1                                      mov r0, r4
007fe158  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fe15c  60 69 19 00 10 2f 00 00                          .byte 0x60, 0x69, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00

; FUNCTION 0x007fe164, declared_size=64, range_size=64, mode=arm
; class-group: CEvent
; alias: _ZN6CEventC2EiPvi
; demangled: CEvent::CEvent(int, void*, int)
; decoder-mode: arm
007fe164  30 c0 9f e5                                      ldr ip, [pc, #0x30]
007fe168  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe16c  2c e0 9f e5                                      ldr lr, [pc, #0x2c]
007fe170  0c c0 8f e0                                      add ip, pc, ip
007fe174  00 50 a0 e3                                      mov r5, #0
007fe178  0e e0 9c e7                                      ldr lr, [ip, lr]
007fe17c  00 40 a0 e1                                      mov r4, r0
007fe180  0c 50 80 e5                                      str r5, [r0, #0xc]
007fe184  08 e0 8e e2                                      add lr, lr, #8
007fe188  00 e0 80 e5                                      str lr, [r0]
007fe18c  08 50 80 e5                                      str r5, [r0, #8]
007fe190  92 ff ff eb                                      bl #0x7fdfe0
007fe194  04 00 a0 e1                                      mov r0, r4
007fe198  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fe19c  20 69 19 00 10 2f 00 00                          .byte 0x20, 0x69, 0x19, 0x00, 0x10, 0x2f, 0x00, 0x00
