; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00831528, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerSocketFactory
; alias: _ZN22GLXPlayerSocketFactory9GetSocketEPciP23GLXPlayerSocketObserver
; demangled: GLXPlayerSocketFactory::GetSocket(char*, int, GLXPlayerSocketObserver*)
; decoder-mode: arm
00831528  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083152c  00 70 a0 e1                                      mov r7, r0
00831530  f4 0c 00 e3                                      movw r0, #0xcf4
00831534  01 60 a0 e1                                      mov r6, r1
00831538  02 50 a0 e1                                      mov r5, r2
0083153c  d2 74 eb eb                                      bl #0x30e88c
00831540  07 10 a0 e1                                      mov r1, r7
00831544  00 40 a0 e1                                      mov r4, r0
00831548  06 20 a0 e1                                      mov r2, r6
0083154c  05 30 a0 e1                                      mov r3, r5
00831550  75 43 00 eb                                      bl #0x84232c
00831554  04 00 a0 e1                                      mov r0, r4
00831558  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
