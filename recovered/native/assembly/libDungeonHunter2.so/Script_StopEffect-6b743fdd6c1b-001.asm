; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004556b4, declared_size=8, range_size=8, mode=arm
; class-group: Script_StopEffect
; alias: _ZNK17Script_StopEffect10IsBlockingEv
; demangled: Script_StopEffect::IsBlocking() const
; decoder-mode: arm
004556b4  00 00 a0 e3                                      mov r0, #0
004556b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00459890, declared_size=36, range_size=36, mode=arm
; class-group: Script_StopEffect
; alias: _ZN17Script_StopEffect7ExecuteEbi
; demangled: Script_StopEffect::Execute(bool, int)
; decoder-mode: arm
00459890  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00459894  10 30 9f e5                                      ldr r3, [pc, #0x10]
00459898  08 10 92 e5                                      ldr r1, [r2, #8]
0045989c  0c 20 9f e5                                      ldr r2, [pc, #0xc]
004598a0  03 30 8f e0                                      add r3, pc, r3
004598a4  02 00 93 e7                                      ldr r0, [r3, r2]
004598a8  6c eb 00 ea                                      b #0x494660
; mapping-symbol data/literal pool
004598ac  f0 b1 53 00 08 1b 00 00                          .byte 0xf0, 0xb1, 0x53, 0x00, 0x08, 0x1b, 0x00, 0x00
