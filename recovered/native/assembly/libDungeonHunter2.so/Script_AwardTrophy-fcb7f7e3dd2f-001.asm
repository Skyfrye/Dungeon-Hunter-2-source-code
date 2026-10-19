; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455920, declared_size=8, range_size=8, mode=arm
; class-group: Script_AwardTrophy
; alias: _ZNK18Script_AwardTrophy10IsBlockingEv
; demangled: Script_AwardTrophy::IsBlocking() const
; decoder-mode: arm
00455920  00 00 a0 e3                                      mov r0, #0
00455924  1e ff 2f e1                                      bx lr

; FUNCTION 0x004593c4, declared_size=48, range_size=48, mode=arm
; class-group: Script_AwardTrophy
; alias: _ZN18Script_AwardTrophy7ExecuteEbi
; demangled: Script_AwardTrophy::Execute(bool, int)
; decoder-mode: arm
004593c4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
004593c8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004593cc  00 00 52 e3                                      cmp r2, #0
004593d0  03 30 8f e0                                      add r3, pc, r3
004593d4  1e ff 2f 01                                      bxeq lr
004593d8  08 10 92 e5                                      ldr r1, [r2, #8]
004593dc  0c 20 9f e5                                      ldr r2, [pc, #0xc]
004593e0  02 30 93 e7                                      ldr r3, [r3, r2]
004593e4  00 00 93 e5                                      ldr r0, [r3]
004593e8  f2 9f fc ea                                      b #0x3813b8
; mapping-symbol data/literal pool
004593ec  c0 b6 53 00 70 1d 00 00                          .byte 0xc0, 0xb6, 0x53, 0x00, 0x70, 0x1d, 0x00, 0x00
