; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863870, declared_size=48, range_size=48, mode=arm
; class-group: vox::PriorityBank
; alias: _ZN3vox12PriorityBankD1Ev
; demangled: vox::PriorityBank::~PriorityBank()
; decoder-mode: arm
00863870  10 40 2d e9                                      push {r4, lr}
00863874  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00863878  10 20 90 e5                                      ldr r2, [r0, #0x10]
0086387c  00 40 a0 e1                                      mov r4, r0
00863880  02 00 53 e1                                      cmp r3, r2
00863884  10 30 80 15                                      strne r3, [r0, #0x10]
00863888  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0086388c  00 00 50 e3                                      cmp r0, #0
00863890  00 00 00 0a                                      beq #0x863898
00863894  ea b2 ea eb                                      bl #0x310444
00863898  04 00 a0 e1                                      mov r0, r4
0086389c  10 80 bd e8                                      pop {r4, pc}
