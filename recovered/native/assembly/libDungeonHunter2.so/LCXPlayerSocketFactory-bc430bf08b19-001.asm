; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0089e57c, declared_size=52, range_size=52, mode=arm
; class-group: LCXPlayerSocketFactory
; alias: _ZN22LCXPlayerSocketFactory9GetSocketEPciP23LCXPlayerSocketObserver
; demangled: LCXPlayerSocketFactory::GetSocket(char*, int, LCXPlayerSocketObserver*)
; decoder-mode: arm
0089e57c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089e580  00 70 a0 e1                                      mov r7, r0
0089e584  cf 0e a0 e3                                      mov r0, #0xcf0
0089e588  01 60 a0 e1                                      mov r6, r1
0089e58c  02 50 a0 e1                                      mov r5, r2
0089e590  bd c0 e9 eb                                      bl #0x30e88c
0089e594  07 10 a0 e1                                      mov r1, r7
0089e598  00 40 a0 e1                                      mov r4, r0
0089e59c  06 20 a0 e1                                      mov r2, r6
0089e5a0  05 30 a0 e1                                      mov r3, r5
0089e5a4  9d 06 00 eb                                      bl #0x8a0020
0089e5a8  04 00 a0 e1                                      mov r0, r4
0089e5ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
