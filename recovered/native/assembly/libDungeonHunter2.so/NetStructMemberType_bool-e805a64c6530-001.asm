; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d2e4, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbED1Ev
; demangled: NetStructMemberType<bool>::~NetStructMemberType()
; decoder-mode: arm
0036d2e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d308, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbE8GetValueEv
; demangled: NetStructMemberType<bool>::GetValue()
; decoder-mode: arm
0036d308  1d 00 80 e2                                      add r0, r0, #0x1d
0036d30c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d484, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbE9TestValueERKb
; demangled: NetStructMemberType<bool>::TestValue(bool const&)
; decoder-mode: arm
0036d484  01 00 a0 e3                                      mov r0, #1
0036d488  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d5f0, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbED0Ev
; demangled: NetStructMemberType<bool>::~NetStructMemberType()
; decoder-mode: arm
0036d5f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d5f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d5f8  10 40 2d e9                                      push {r4, lr}
0036d5fc  03 30 8f e0                                      add r3, pc, r3
0036d600  02 20 93 e7                                      ldr r2, [r3, r2]
0036d604  00 40 a0 e1                                      mov r4, r0
0036d608  08 20 82 e2                                      add r2, r2, #8
0036d60c  00 20 80 e5                                      str r2, [r0]
0036d610  8a 8b fe eb                                      bl #0x310440
0036d614  04 00 a0 e1                                      mov r0, r4
0036d618  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d61c  94 74 62 00 a8 10 00 00                          .byte 0x94, 0x74, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036da20, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbE8SetValueERKb
; demangled: NetStructMemberType<bool>::SetValue(bool const&)
; decoder-mode: arm
0036da20  00 20 d1 e5                                      ldrb r2, [r1]
0036da24  1d 10 d0 e5                                      ldrb r1, [r0, #0x1d]
0036da28  02 00 51 e1                                      cmp r1, r2
0036da2c  1e ff 2f 01                                      bxeq lr
0036da30  1d 20 c0 e5                                      strb r2, [r0, #0x1d]
0036da34  52 9d 12 ea                                      b #0x814f84

; FUNCTION 0x0036dd94, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<bool>
; alias: _ZN19NetStructMemberTypeIbE5EraseER12NetBitStream
; demangled: NetStructMemberType<bool>::Erase(NetBitStream&)
; decoder-mode: arm
0036dd94  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dd98  1d 50 d0 e5                                      ldrb r5, [r0, #0x1d]
0036dd9c  00 40 a0 e1                                      mov r4, r0
0036dda0  d9 9c 12 eb                                      bl #0x81510c
0036dda4  1d 50 c4 e5                                      strb r5, [r4, #0x1d]
0036dda8  70 80 bd e8                                      pop {r4, r5, r6, pc}
