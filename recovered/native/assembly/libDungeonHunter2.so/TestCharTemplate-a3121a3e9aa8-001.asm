; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b05c, declared_size=48, range_size=48, mode=arm
; class-group: TestCharTemplate
; alias: _ZN16TestCharTemplate7CompareEiP9Character
; demangled: TestCharTemplate::Compare(int, Character*)
; decoder-mode: arm
0047b05c  00 00 51 e3                                      cmp r1, #0
0047b060  10 40 2d e9                                      push {r4, lr}
0047b064  00 40 a0 e1                                      mov r4, r0
0047b068  05 00 00 0a                                      beq #0x47b084
0047b06c  01 00 a0 e1                                      mov r0, r1
0047b070  9d e1 fc eb                                      bl #0x3b36ec
0047b074  04 00 50 e1                                      cmp r0, r4
0047b078  00 00 a0 13                                      movne r0, #0
0047b07c  01 00 a0 03                                      moveq r0, #1
0047b080  10 80 bd e8                                      pop {r4, pc}
0047b084  01 00 a0 e1                                      mov r0, r1
0047b088  10 80 bd e8                                      pop {r4, pc}
