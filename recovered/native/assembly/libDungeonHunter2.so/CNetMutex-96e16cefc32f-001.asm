; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080e368, declared_size=4, range_size=4, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutex6UnlockEv
; demangled: CNetMutex::Unlock()
; decoder-mode: arm
0080e368  09 00 ec ea                                      b #0x30e394

; FUNCTION 0x0080e36c, declared_size=4, range_size=4, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutex4LockEv
; demangled: CNetMutex::Lock()
; decoder-mode: arm
0080e36c  8f 00 ec ea                                      b #0x30e5b0

; FUNCTION 0x0080e370, declared_size=20, range_size=20, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutexD1Ev
; demangled: CNetMutex::~CNetMutex()
; decoder-mode: arm
0080e370  10 40 2d e9                                      push {r4, lr}
0080e374  00 40 a0 e1                                      mov r4, r0
0080e378  ce 00 ec eb                                      bl #0x30e6b8
0080e37c  04 00 a0 e1                                      mov r0, r4
0080e380  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080e384, declared_size=20, range_size=20, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutexD2Ev
; demangled: CNetMutex::~CNetMutex()
; decoder-mode: arm
0080e384  10 40 2d e9                                      push {r4, lr}
0080e388  00 40 a0 e1                                      mov r4, r0
0080e38c  c9 00 ec eb                                      bl #0x30e6b8
0080e390  04 00 a0 e1                                      mov r0, r4
0080e394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080e398, declared_size=60, range_size=60, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutexC1Ev
; demangled: CNetMutex::CNetMutex()
; decoder-mode: arm
0080e398  30 40 2d e9                                      push {r4, r5, lr}
0080e39c  0c d0 4d e2                                      sub sp, sp, #0xc
0080e3a0  04 40 8d e2                                      add r4, sp, #4
0080e3a4  00 50 a0 e1                                      mov r5, r0
0080e3a8  04 00 a0 e1                                      mov r0, r4
0080e3ac  8f 02 ec eb                                      bl #0x30edf0
0080e3b0  04 00 a0 e1                                      mov r0, r4
0080e3b4  01 10 a0 e3                                      mov r1, #1
0080e3b8  26 02 ec eb                                      bl #0x30ec58
0080e3bc  05 00 a0 e1                                      mov r0, r5
0080e3c0  04 10 a0 e1                                      mov r1, r4
0080e3c4  f9 fe eb eb                                      bl #0x30dfb0
0080e3c8  05 00 a0 e1                                      mov r0, r5
0080e3cc  0c d0 8d e2                                      add sp, sp, #0xc
0080e3d0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0080e3d4, declared_size=60, range_size=60, mode=arm
; class-group: CNetMutex
; alias: _ZN9CNetMutexC2Ev
; demangled: CNetMutex::CNetMutex()
; decoder-mode: arm
0080e3d4  30 40 2d e9                                      push {r4, r5, lr}
0080e3d8  0c d0 4d e2                                      sub sp, sp, #0xc
0080e3dc  04 40 8d e2                                      add r4, sp, #4
0080e3e0  00 50 a0 e1                                      mov r5, r0
0080e3e4  04 00 a0 e1                                      mov r0, r4
0080e3e8  80 02 ec eb                                      bl #0x30edf0
0080e3ec  04 00 a0 e1                                      mov r0, r4
0080e3f0  01 10 a0 e3                                      mov r1, #1
0080e3f4  17 02 ec eb                                      bl #0x30ec58
0080e3f8  05 00 a0 e1                                      mov r0, r5
0080e3fc  04 10 a0 e1                                      mov r1, r4
0080e400  ea fe eb eb                                      bl #0x30dfb0
0080e404  05 00 a0 e1                                      mov r0, r5
0080e408  0c d0 8d e2                                      add sp, sp, #0xc
0080e40c  30 80 bd e8                                      pop {r4, r5, pc}
