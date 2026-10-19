; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893464, declared_size=20, range_size=20, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5Mutex7TryLockEv
; demangled: vox::Mutex::TryLock()
; decoder-mode: arm
00893464  10 40 2d e9                                      push {r4, lr}
00893468  e1 eb e9 eb                                      bl #0x30e3f4
0089346c  01 00 70 e2                                      rsbs r0, r0, #1
00893470  00 00 a0 33                                      movlo r0, #0
00893474  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00893478, declared_size=4, range_size=4, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5Mutex6UnlockEv
; demangled: vox::Mutex::Unlock()
; decoder-mode: arm
00893478  c5 eb e9 ea                                      b #0x30e394

; FUNCTION 0x0089347c, declared_size=4, range_size=4, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5Mutex4LockEv
; demangled: vox::Mutex::Lock()
; decoder-mode: arm
0089347c  4b ec e9 ea                                      b #0x30e5b0

; FUNCTION 0x00893590, declared_size=12, range_size=12, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexC1ERKS0_
; demangled: vox::Mutex::Mutex(vox::Mutex const&)
; decoder-mode: arm
00893590  00 30 91 e5                                      ldr r3, [r1]
00893594  00 30 80 e5                                      str r3, [r0]
00893598  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089359c, declared_size=12, range_size=12, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexC2ERKS0_
; demangled: vox::Mutex::Mutex(vox::Mutex const&)
; decoder-mode: arm
0089359c  00 30 91 e5                                      ldr r3, [r1]
008935a0  00 30 80 e5                                      str r3, [r0]
008935a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008935a8, declared_size=20, range_size=20, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexD1Ev
; demangled: vox::Mutex::~Mutex()
; decoder-mode: arm
008935a8  10 40 2d e9                                      push {r4, lr}
008935ac  00 40 a0 e1                                      mov r4, r0
008935b0  40 ec e9 eb                                      bl #0x30e6b8
008935b4  04 00 a0 e1                                      mov r0, r4
008935b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008935bc, declared_size=20, range_size=20, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexD2Ev
; demangled: vox::Mutex::~Mutex()
; decoder-mode: arm
008935bc  10 40 2d e9                                      push {r4, lr}
008935c0  00 40 a0 e1                                      mov r4, r0
008935c4  3b ec e9 eb                                      bl #0x30e6b8
008935c8  04 00 a0 e1                                      mov r0, r4
008935cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008935d0, declared_size=24, range_size=24, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexC1Ev
; demangled: vox::Mutex::Mutex()
; decoder-mode: arm
008935d0  10 40 2d e9                                      push {r4, lr}
008935d4  00 10 a0 e3                                      mov r1, #0
008935d8  00 40 a0 e1                                      mov r4, r0
008935dc  73 ea e9 eb                                      bl #0x30dfb0
008935e0  04 00 a0 e1                                      mov r0, r4
008935e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008935e8, declared_size=24, range_size=24, mode=arm
; class-group: vox::Mutex
; alias: _ZN3vox5MutexC2Ev
; demangled: vox::Mutex::Mutex()
; decoder-mode: arm
008935e8  10 40 2d e9                                      push {r4, lr}
008935ec  00 10 a0 e3                                      mov r1, #0
008935f0  00 40 a0 e1                                      mov r4, r0
008935f4  6d ea e9 eb                                      bl #0x30dfb0
008935f8  04 00 a0 e1                                      mov r0, r4
008935fc  10 80 bd e8                                      pop {r4, pc}
