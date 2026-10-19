; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d2f0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiE8GetValueEv
; demangled: NetStructMemberType<int>::GetValue()
; decoder-mode: arm
0036d2f0  20 00 80 e2                                      add r0, r0, #0x20
0036d2f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d304, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiED1Ev
; demangled: NetStructMemberType<int>::~NetStructMemberType()
; decoder-mode: arm
0036d304  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d474, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiE9TestValueERKi
; demangled: NetStructMemberType<int>::TestValue(int const&)
; decoder-mode: arm
0036d474  01 00 a0 e3                                      mov r0, #1
0036d478  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d4ec, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiED0Ev
; demangled: NetStructMemberType<int>::~NetStructMemberType()
; decoder-mode: arm
0036d4ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d4f0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d4f4  10 40 2d e9                                      push {r4, lr}
0036d4f8  03 30 8f e0                                      add r3, pc, r3
0036d4fc  02 20 93 e7                                      ldr r2, [r3, r2]
0036d500  00 40 a0 e1                                      mov r4, r0
0036d504  08 20 82 e2                                      add r2, r2, #8
0036d508  00 20 80 e5                                      str r2, [r0]
0036d50c  cb 8b fe eb                                      bl #0x310440
0036d510  04 00 a0 e1                                      mov r0, r4
0036d514  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d518  98 75 62 00 a8 10 00 00                          .byte 0x98, 0x75, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036d9f0, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiE8SetValueERKi
; demangled: NetStructMemberType<int>::SetValue(int const&)
; decoder-mode: arm
0036d9f0  00 20 91 e5                                      ldr r2, [r1]
0036d9f4  20 10 90 e5                                      ldr r1, [r0, #0x20]
0036d9f8  02 00 51 e1                                      cmp r1, r2
0036d9fc  1e ff 2f 01                                      bxeq lr
0036da00  20 20 80 e5                                      str r2, [r0, #0x20]
0036da04  5e 9d 12 ea                                      b #0x814f84

; FUNCTION 0x0036dd64, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<int>
; alias: _ZN19NetStructMemberTypeIiE5EraseER12NetBitStream
; demangled: NetStructMemberType<int>::Erase(NetBitStream&)
; decoder-mode: arm
0036dd64  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dd68  20 50 90 e5                                      ldr r5, [r0, #0x20]
0036dd6c  00 40 a0 e1                                      mov r4, r0
0036dd70  e5 9c 12 eb                                      bl #0x81510c
0036dd74  20 50 84 e5                                      str r5, [r4, #0x20]
0036dd78  70 80 bd e8                                      pop {r4, r5, r6, pc}
