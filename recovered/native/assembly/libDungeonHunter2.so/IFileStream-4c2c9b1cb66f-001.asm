; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034eb5c, declared_size=4, range_size=4, mode=arm
; class-group: IFileStream
; alias: _ZN11IFileStreamD1Ev
; demangled: IFileStream::~IFileStream()
; decoder-mode: arm
0034eb5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034eb60, declared_size=52, range_size=52, mode=arm
; class-group: IFileStream
; alias: _ZN11IFileStream4skipEy
; demangled: IFileStream::skip(unsigned long long)
; decoder-mode: arm
0034eb60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034eb64  00 10 90 e5                                      ldr r1, [r0]
0034eb68  00 40 a0 e1                                      mov r4, r0
0034eb6c  02 60 a0 e1                                      mov r6, r2
0034eb70  03 70 a0 e1                                      mov r7, r3
0034eb74  20 50 91 e5                                      ldr r5, [r1, #0x20]
0034eb78  0f e0 a0 e1                                      mov lr, pc
0034eb7c  24 f0 91 e5                                      ldr pc, [r1, #0x24]
0034eb80  06 20 90 e0                                      adds r2, r0, r6
0034eb84  07 30 a1 e0                                      adc r3, r1, r7
0034eb88  04 00 a0 e1                                      mov r0, r4
0034eb8c  35 ff 2f e1                                      blx r5
0034eb90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0034f004, declared_size=52, range_size=52, mode=arm
; class-group: IFileStream
; alias: _ZN11IFileStreamD0Ev
; demangled: IFileStream::~IFileStream()
; decoder-mode: arm
0034f004  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034f008  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034f00c  10 40 2d e9                                      push {r4, lr}
0034f010  03 30 8f e0                                      add r3, pc, r3
0034f014  02 20 93 e7                                      ldr r2, [r3, r2]
0034f018  00 40 a0 e1                                      mov r4, r0
0034f01c  08 20 82 e2                                      add r2, r2, #8
0034f020  00 20 80 e5                                      str r2, [r0]
0034f024  05 05 ff eb                                      bl #0x310440
0034f028  04 00 a0 e1                                      mov r0, r4
0034f02c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034f030  80 5a 64 00 ac 2d 00 00                          .byte 0x80, 0x5a, 0x64, 0x00, 0xac, 0x2d, 0x00, 0x00
