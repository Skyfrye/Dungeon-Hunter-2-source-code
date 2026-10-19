; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00342054, declared_size=128, range_size=128, mode=arm
; class-group: Module** std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPP6ModuleS2_20SortModuleByDistanceEET_S5_S5_T0_T1_
; demangled: Module** std::priv::__unguarded_partition<Module**, Module*, SortModuleByDistance>(Module**, Module**, Module*, SortModuleByDistance)
; decoder-mode: arm
00342054  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00342058  08 d0 4d e2                                      sub sp, sp, #8
0034205c  08 40 8d e2                                      add r4, sp, #8
00342060  04 30 24 e5                                      str r3, [r4, #-4]!
00342064  00 50 a0 e1                                      mov r5, r0
00342068  01 80 a0 e1                                      mov r8, r1
0034206c  02 70 a0 e1                                      mov r7, r2
00342070  00 10 95 e5                                      ldr r1, [r5]
00342074  04 00 a0 e1                                      mov r0, r4
00342078  07 20 a0 e1                                      mov r2, r7
0034207c  d2 fe ff eb                                      bl #0x341bcc
00342080  00 00 50 e3                                      cmp r0, #0
00342084  04 50 85 12                                      addne r5, r5, #4
00342088  f8 ff ff 1a                                      bne #0x342070
0034208c  08 60 a0 e1                                      mov r6, r8
00342090  04 00 a0 e1                                      mov r0, r4
00342094  07 10 a0 e1                                      mov r1, r7
00342098  04 20 36 e5                                      ldr r2, [r6, #-4]!
0034209c  ca fe ff eb                                      bl #0x341bcc
003420a0  00 00 50 e3                                      cmp r0, #0
003420a4  f9 ff ff 1a                                      bne #0x342090
003420a8  05 00 56 e1                                      cmp r6, r5
003420ac  06 80 a0 e1                                      mov r8, r6
003420b0  04 00 00 9a                                      bls #0x3420c8
003420b4  00 30 95 e5                                      ldr r3, [r5]
003420b8  00 20 96 e5                                      ldr r2, [r6]
003420bc  04 20 85 e4                                      str r2, [r5], #4
003420c0  00 30 86 e5                                      str r3, [r6]
003420c4  e9 ff ff ea                                      b #0x342070
003420c8  05 00 a0 e1                                      mov r0, r5
003420cc  08 d0 8d e2                                      add sp, sp, #8
003420d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
