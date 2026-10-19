; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b820, declared_size=48, range_size=48, mode=arm
; class-group: TestCharPropId
; alias: _ZN14TestCharPropId7CompareEiP9Character
; demangled: TestCharPropId::Compare(int, Character*)
; decoder-mode: arm
0047b820  00 00 51 e3                                      cmp r1, #0
0047b824  10 40 2d e9                                      push {r4, lr}
0047b828  00 40 a0 e1                                      mov r4, r0
0047b82c  05 00 00 0a                                      beq #0x47b848
0047b830  01 00 a0 e1                                      mov r0, r1
0047b834  3f e1 fc eb                                      bl #0x3b3d38
0047b838  04 00 50 e1                                      cmp r0, r4
0047b83c  00 00 a0 13                                      movne r0, #0
0047b840  01 00 a0 03                                      moveq r0, #1
0047b844  10 80 bd e8                                      pop {r4, pc}
0047b848  01 00 a0 e1                                      mov r0, r1
0047b84c  10 80 bd e8                                      pop {r4, pc}
