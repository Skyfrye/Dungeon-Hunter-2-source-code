; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1708, declared_size=48, range_size=48, mode=arm
; class-group: Structs::DeactivateProjectileTrap
; alias: _ZN7Structs24DeactivateProjectileTrap8finalizeEv
; demangled: Structs::DeactivateProjectileTrap::finalize()
; decoder-mode: arm
004d1708  10 40 2d e9                                      push {r4, lr}
004d170c  00 40 a0 e1                                      mov r4, r0
004d1710  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1714  00 00 50 e3                                      cmp r0, #0
004d1718  03 00 00 0a                                      beq #0x4d172c
004d171c  47 fb f8 eb                                      bl #0x310440
004d1720  00 30 a0 e3                                      mov r3, #0
004d1724  08 30 84 e5                                      str r3, [r4, #8]
004d1728  0c 30 84 e5                                      str r3, [r4, #0xc]
004d172c  04 00 a0 e1                                      mov r0, r4
004d1730  10 40 bd e8                                      pop {r4, lr}
004d1734  4b d5 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1738, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DeactivateProjectileTrap
; alias: _ZN7Structs24DeactivateProjectileTrapD1Ev
; demangled: Structs::DeactivateProjectileTrap::~DeactivateProjectileTrap()
; decoder-mode: arm
004d1738  10 40 2d e9                                      push {r4, lr}
004d173c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1740  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1744  00 40 a0 e1                                      mov r4, r0
004d1748  03 30 8f e0                                      add r3, pc, r3
004d174c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1750  02 20 93 e7                                      ldr r2, [r3, r2]
004d1754  00 00 50 e3                                      cmp r0, #0
004d1758  08 20 82 e2                                      add r2, r2, #8
004d175c  00 20 84 e5                                      str r2, [r4]
004d1760  00 00 00 0a                                      beq #0x4d1768
004d1764  35 fb f8 eb                                      bl #0x310440
004d1768  04 00 a0 e1                                      mov r0, r4
004d176c  3b d5 ff eb                                      bl #0x4c6c60
004d1770  04 00 a0 e1                                      mov r0, r4
004d1774  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1778  48 33 4c 00 fc 2e 00 00                          .byte 0x48, 0x33, 0x4c, 0x00, 0xfc, 0x2e, 0x00, 0x00

; FUNCTION 0x004d1780, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DeactivateProjectileTrap
; alias: _ZN7Structs24DeactivateProjectileTrapD0Ev
; demangled: Structs::DeactivateProjectileTrap::~DeactivateProjectileTrap()
; decoder-mode: arm
004d1780  10 40 2d e9                                      push {r4, lr}
004d1784  00 40 a0 e1                                      mov r4, r0
004d1788  ea ff ff eb                                      bl #0x4d1738
004d178c  04 00 a0 e1                                      mov r0, r4
004d1790  2a fb f8 eb                                      bl #0x310440
004d1794  04 00 a0 e1                                      mov r0, r4
004d1798  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d179c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DeactivateProjectileTrap
; alias: _ZN7Structs24DeactivateProjectileTrapD2Ev
; demangled: Structs::DeactivateProjectileTrap::~DeactivateProjectileTrap()
; decoder-mode: arm
004d179c  10 40 2d e9                                      push {r4, lr}
004d17a0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d17a4  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d17a8  00 40 a0 e1                                      mov r4, r0
004d17ac  03 30 8f e0                                      add r3, pc, r3
004d17b0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d17b4  02 20 93 e7                                      ldr r2, [r3, r2]
004d17b8  00 00 50 e3                                      cmp r0, #0
004d17bc  08 20 82 e2                                      add r2, r2, #8
004d17c0  00 20 84 e5                                      str r2, [r4]
004d17c4  00 00 00 0a                                      beq #0x4d17cc
004d17c8  1c fb f8 eb                                      bl #0x310440
004d17cc  04 00 a0 e1                                      mov r0, r4
004d17d0  22 d5 ff eb                                      bl #0x4c6c60
004d17d4  04 00 a0 e1                                      mov r0, r4
004d17d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d17dc  e4 32 4c 00 fc 2e 00 00                          .byte 0xe4, 0x32, 0x4c, 0x00, 0xfc, 0x2e, 0x00, 0x00

; FUNCTION 0x00500470, declared_size=192, range_size=192, mode=arm
; class-group: Structs::DeactivateProjectileTrap
; alias: _ZN7Structs24DeactivateProjectileTrap4readEP11IStreamBase
; demangled: Structs::DeactivateProjectileTrap::read(IStreamBase*)
; decoder-mode: arm
00500470  70 40 2d e9                                      push {r4, r5, r6, lr}
00500474  00 40 a0 e1                                      mov r4, r0
00500478  08 d0 4d e2                                      sub sp, sp, #8
0050047c  01 60 a0 e1                                      mov r6, r1
00500480  e8 fc ff eb                                      bl #0x4ff828
00500484  06 00 a0 e1                                      mov r0, r6
00500488  08 10 84 e2                                      add r1, r4, #8
0050048c  43 7b fb eb                                      bl #0x3df1a0
00500490  01 30 a0 e3                                      mov r3, #1
00500494  00 00 53 e3                                      cmp r3, #0
00500498  04 30 8d e5                                      str r3, [sp, #4]
0050049c  0f 00 00 1a                                      bne #0x5004e0
005004a0  09 30 84 e2                                      add r3, r4, #9
005004a4  0a 20 84 e2                                      add r2, r4, #0xa
005004a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005004ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
005004b0  02 00 53 e1                                      cmp r3, r2
005004b4  01 10 20 e0                                      eor r1, r0, r1
005004b8  01 10 43 e5                                      strb r1, [r3, #-1]
005004bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005004c0  00 10 21 e0                                      eor r1, r1, r0
005004c4  01 10 c2 e5                                      strb r1, [r2, #1]
005004c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
005004cc  01 20 42 e2                                      sub r2, r2, #1
005004d0  00 10 21 e0                                      eor r1, r1, r0
005004d4  01 10 43 e5                                      strb r1, [r3, #-1]
005004d8  01 30 83 e2                                      add r3, r3, #1
005004dc  f1 ff ff 3a                                      blo #0x5004a8
005004e0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005004e4  00 00 50 e3                                      cmp r0, #0
005004e8  00 00 00 0a                                      beq #0x5004f0
005004ec  d3 3f f8 eb                                      bl #0x310440
005004f0  08 00 94 e5                                      ldr r0, [r4, #8]
005004f4  01 10 a0 e3                                      mov r1, #1
005004f8  00 50 a0 e3                                      mov r5, #0
005004fc  01 00 80 e0                                      add r0, r0, r1
00500500  19 40 f8 eb                                      bl #0x31056c
00500504  08 20 94 e5                                      ldr r2, [r4, #8]
00500508  00 10 a0 e1                                      mov r1, r0
0050050c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500510  05 30 a0 e1                                      mov r3, r5
00500514  06 00 a0 e1                                      mov r0, r6
00500518  cd 5b f8 eb                                      bl #0x317454
0050051c  08 30 94 e5                                      ldr r3, [r4, #8]
00500520  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500524  03 50 c2 e7                                      strb r5, [r2, r3]
00500528  08 d0 8d e2                                      add sp, sp, #8
0050052c  70 80 bd e8                                      pop {r4, r5, r6, pc}
