; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455968, declared_size=8, range_size=8, mode=arm
; class-group: Script_LockTutorial
; alias: _ZNK19Script_LockTutorial10IsBlockingEv
; demangled: Script_LockTutorial::IsBlocking() const
; decoder-mode: arm
00455968  00 00 a0 e3                                      mov r0, #0
0045596c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045925c, declared_size=112, range_size=112, mode=arm
; class-group: Script_LockTutorial
; alias: _ZN19Script_LockTutorial7ExecuteEbi
; demangled: Script_LockTutorial::Execute(bool, int)
; decoder-mode: arm
0045925c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00459260  54 30 9f e5                                      ldr r3, [pc, #0x54]
00459264  00 00 52 e3                                      cmp r2, #0
00459268  03 30 8f e0                                      add r3, pc, r3
0045926c  1e ff 2f 01                                      bxeq lr
00459270  08 00 92 e5                                      ldr r0, [r2, #8]
00459274  44 20 9f e5                                      ldr r2, [pc, #0x44]
00459278  44 10 9f e5                                      ldr r1, [pc, #0x44]
0045927c  02 20 93 e7                                      ldr r2, [r3, r2]
00459280  01 10 93 e7                                      ldr r1, [r3, r1]
00459284  4c c0 92 e5                                      ldr ip, [r2, #0x4c]
00459288  00 00 8c e0                                      add r0, ip, r0
0045928c  28 00 80 e2                                      add r0, r0, #0x28
00459290  00 c0 a0 e3                                      mov ip, #0
00459294  01 c0 c0 e5                                      strb ip, [r0, #1]
00459298  00 10 91 e5                                      ldr r1, [r1]
0045929c  11 00 51 e3                                      cmp r1, #0x11
004592a0  03 00 00 0a                                      beq #0x4592b4
004592a4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
004592a8  02 30 93 e7                                      ldr r3, [r3, r2]
004592ac  00 00 93 e5                                      ldr r0, [r3]
004592b0  f8 fa fa ea                                      b #0x317e98
004592b4  4c 00 92 e5                                      ldr r0, [r2, #0x4c]
004592b8  1d 4e 00 ea                                      b #0x46cb34
; mapping-symbol data/literal pool
004592bc  28 b8 53 00 f4 37 00 00 50 38 00 00 40 48 00 00  .byte 0x28, 0xb8, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0x38, 0x00, 0x00, 0x40, 0x48, 0x00, 0x00
