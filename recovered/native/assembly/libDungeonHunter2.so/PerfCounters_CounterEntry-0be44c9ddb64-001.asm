; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00311730, declared_size=76, range_size=76, mode=arm
; class-group: PerfCounters::CounterEntry
; alias: _ZN12PerfCounters12CounterEntryC1ERKS0_
; demangled: PerfCounters::CounterEntry::CounterEntry(PerfCounters::CounterEntry const&)
; decoder-mode: arm
00311730  70 40 2d e9                                      push {r4, r5, r6, lr}
00311734  00 40 a0 e1                                      mov r4, r0
00311738  01 50 a0 e1                                      mov r5, r1
0031173c  10 00 84 e5                                      str r0, [r4, #0x10]
00311740  14 00 84 e5                                      str r0, [r4, #0x14]
00311744  10 20 95 e5                                      ldr r2, [r5, #0x10]
00311748  14 10 91 e5                                      ldr r1, [r1, #0x14]
0031174c  e5 ff ff eb                                      bl #0x3116e8
00311750  18 30 95 e5                                      ldr r3, [r5, #0x18]
00311754  24 10 85 e2                                      add r1, r5, #0x24
00311758  24 00 84 e2                                      add r0, r4, #0x24
0031175c  18 30 84 e5                                      str r3, [r4, #0x18]
00311760  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00311764  1c 30 84 e5                                      str r3, [r4, #0x1c]
00311768  20 30 95 e5                                      ldr r3, [r5, #0x20]
0031176c  20 30 84 e5                                      str r3, [r4, #0x20]
00311770  d0 fd ff eb                                      bl #0x310eb8
00311774  04 00 a0 e1                                      mov r0, r4
00311778  70 80 bd e8                                      pop {r4, r5, r6, pc}
