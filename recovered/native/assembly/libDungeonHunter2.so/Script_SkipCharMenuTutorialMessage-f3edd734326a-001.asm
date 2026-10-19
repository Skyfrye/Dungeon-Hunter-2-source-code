; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455958, declared_size=8, range_size=8, mode=arm
; class-group: Script_SkipCharMenuTutorialMessage
; alias: _ZNK34Script_SkipCharMenuTutorialMessage10IsBlockingEv
; demangled: Script_SkipCharMenuTutorialMessage::IsBlocking() const
; decoder-mode: arm
00455958  00 00 a0 e3                                      mov r0, #0
0045595c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004603d0, declared_size=88, range_size=88, mode=arm
; class-group: Script_SkipCharMenuTutorialMessage
; alias: _ZN34Script_SkipCharMenuTutorialMessage7ExecuteEbi
; demangled: Script_SkipCharMenuTutorialMessage::Execute(bool, int)
; decoder-mode: arm
004603d0  10 40 2d e9                                      push {r4, lr}
004603d4  40 40 9f e5                                      ldr r4, [pc, #0x40]
004603d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
004603dc  04 40 8f e0                                      add r4, pc, r4
004603e0  03 00 94 e7                                      ldr r0, [r4, r3]
004603e4  14 20 90 e5                                      ldr r2, [r0, #0x14]
004603e8  04 30 90 e5                                      ldr r3, [r0, #4]
004603ec  03 00 52 e1                                      cmp r2, r3
004603f0  08 00 00 0a                                      beq #0x460418
004603f4  04 00 80 e2                                      add r0, r0, #4
004603f8  56 86 ff eb                                      bl #0x441d58
004603fc  20 30 9f e5                                      ldr r3, [pc, #0x20]
00460400  03 30 94 e7                                      ldr r3, [r4, r3]
00460404  00 00 93 e5                                      ldr r0, [r3]
00460408  00 00 50 e3                                      cmp r0, #0
0046040c  01 00 00 0a                                      beq #0x460418
00460410  10 40 bd e8                                      pop {r4, lr}
00460414  38 e7 ff ea                                      b #0x45a0fc
00460418  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046041c  b4 46 53 00 00 49 00 00 78 25 00 00              .byte 0xb4, 0x46, 0x53, 0x00, 0x00, 0x49, 0x00, 0x00, 0x78, 0x25, 0x00, 0x00
