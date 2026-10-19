; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080e2ec, declared_size=36, range_size=36, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLockC2Ev
; demangled: CReadWriteLock::CReadWriteLock()
; decoder-mode: arm
0080e2ec  14 30 9f e5                                      ldr r3, [pc, #0x14]
0080e2f0  14 20 9f e5                                      ldr r2, [pc, #0x14]
0080e2f4  03 30 8f e0                                      add r3, pc, r3
0080e2f8  02 20 93 e7                                      ldr r2, [r3, r2]
0080e2fc  08 20 82 e2                                      add r2, r2, #8
0080e300  00 20 80 e5                                      str r2, [r0]
0080e304  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0080e308  9c 67 18 00 10 19 00 00                          .byte 0x9c, 0x67, 0x18, 0x00, 0x10, 0x19, 0x00, 0x00

; FUNCTION 0x0080e310, declared_size=36, range_size=36, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLockC1Ev
; demangled: CReadWriteLock::CReadWriteLock()
; decoder-mode: arm
0080e310  14 30 9f e5                                      ldr r3, [pc, #0x14]
0080e314  14 20 9f e5                                      ldr r2, [pc, #0x14]
0080e318  03 30 8f e0                                      add r3, pc, r3
0080e31c  02 20 93 e7                                      ldr r2, [r3, r2]
0080e320  08 20 82 e2                                      add r2, r2, #8
0080e324  00 20 80 e5                                      str r2, [r0]
0080e328  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0080e32c  78 67 18 00 10 19 00 00                          .byte 0x78, 0x67, 0x18, 0x00, 0x10, 0x19, 0x00, 0x00

; FUNCTION 0x0080e334, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLockD2Ev
; demangled: CReadWriteLock::~CReadWriteLock()
; decoder-mode: arm
0080e334  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e338, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLockD1Ev
; demangled: CReadWriteLock::~CReadWriteLock()
; decoder-mode: arm
0080e338  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e33c, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLock9LockWriteEv
; demangled: CReadWriteLock::LockWrite()
; decoder-mode: arm
0080e33c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e340, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLock11UnlockWriteEv
; demangled: CReadWriteLock::UnlockWrite()
; decoder-mode: arm
0080e340  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e344, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLock8LockReadEv
; demangled: CReadWriteLock::LockRead()
; decoder-mode: arm
0080e344  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e348, declared_size=4, range_size=4, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLock10UnlockReadEv
; demangled: CReadWriteLock::UnlockRead()
; decoder-mode: arm
0080e348  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e34c, declared_size=28, range_size=28, mode=arm
; class-group: CReadWriteLock
; alias: _ZN14CReadWriteLockD0Ev
; demangled: CReadWriteLock::~CReadWriteLock()
; decoder-mode: arm
0080e34c  10 40 2d e9                                      push {r4, lr}
0080e350  00 40 a0 e1                                      mov r4, r0
0080e354  f7 ff ff eb                                      bl #0x80e338
0080e358  04 00 a0 e1                                      mov r0, r4
0080e35c  d3 ff eb eb                                      bl #0x30e2b0
0080e360  04 00 a0 e1                                      mov r0, r4
0080e364  10 80 bd e8                                      pop {r4, pc}
