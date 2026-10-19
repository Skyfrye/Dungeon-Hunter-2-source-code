; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00821dbc, declared_size=88, range_size=88, mode=arm
; class-group: tMemberInfo
; alias: _ZN11tMemberInfoD1Ev
; demangled: tMemberInfo::~tMemberInfo()
; decoder-mode: arm
00821dbc  10 40 2d e9                                      push {r4, lr}
00821dc0  00 20 a0 e3                                      mov r2, #0
00821dc4  00 30 a0 e1                                      mov r3, r0
00821dc8  24 20 80 e5                                      str r2, [r0, #0x24]
00821dcc  00 20 e0 e3                                      mvn r2, #0
00821dd0  0c 20 83 e4                                      str r2, [r3], #0xc
00821dd4  00 40 a0 e1                                      mov r4, r0
00821dd8  14 00 93 e5                                      ldr r0, [r3, #0x14]
00821ddc  03 00 50 e1                                      cmp r0, r3
00821de0  06 00 00 0a                                      beq #0x821e00
00821de4  00 00 50 e3                                      cmp r0, #0
00821de8  04 00 00 0a                                      beq #0x821e00
00821dec  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00821df0  01 10 60 e0                                      rsb r1, r0, r1
00821df4  80 00 51 e3                                      cmp r1, #0x80
00821df8  02 00 00 8a                                      bhi #0x821e08
00821dfc  4d 71 02 eb                                      bl #0x8be338
00821e00  04 00 a0 e1                                      mov r0, r4
00821e04  10 80 bd e8                                      pop {r4, pc}
00821e08  8c b9 eb eb                                      bl #0x310440
00821e0c  04 00 a0 e1                                      mov r0, r4
00821e10  10 80 bd e8                                      pop {r4, pc}
