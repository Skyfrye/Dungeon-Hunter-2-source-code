; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d2e8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjE8GetValueEv
; demangled: NetStructMemberType<unsigned int>::GetValue()
; decoder-mode: arm
0036d2e8  20 00 80 e2                                      add r0, r0, #0x20
0036d2ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d300, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjED1Ev
; demangled: NetStructMemberType<unsigned int>::~NetStructMemberType()
; decoder-mode: arm
0036d300  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d47c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjE9TestValueERKj
; demangled: NetStructMemberType<unsigned int>::TestValue(unsigned int const&)
; decoder-mode: arm
0036d47c  01 00 a0 e3                                      mov r0, #1
0036d480  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d588, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjED0Ev
; demangled: NetStructMemberType<unsigned int>::~NetStructMemberType()
; decoder-mode: arm
0036d588  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d58c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d590  10 40 2d e9                                      push {r4, lr}
0036d594  03 30 8f e0                                      add r3, pc, r3
0036d598  02 20 93 e7                                      ldr r2, [r3, r2]
0036d59c  00 40 a0 e1                                      mov r4, r0
0036d5a0  08 20 82 e2                                      add r2, r2, #8
0036d5a4  00 20 80 e5                                      str r2, [r0]
0036d5a8  a4 8b fe eb                                      bl #0x310440
0036d5ac  04 00 a0 e1                                      mov r0, r4
0036d5b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d5b4  fc 74 62 00 a8 10 00 00                          .byte 0xfc, 0x74, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036da08, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjE8SetValueERKj
; demangled: NetStructMemberType<unsigned int>::SetValue(unsigned int const&)
; decoder-mode: arm
0036da08  00 20 91 e5                                      ldr r2, [r1]
0036da0c  20 10 90 e5                                      ldr r1, [r0, #0x20]
0036da10  02 00 51 e1                                      cmp r1, r2
0036da14  1e ff 2f 01                                      bxeq lr
0036da18  20 20 80 e5                                      str r2, [r0, #0x20]
0036da1c  58 9d 12 ea                                      b #0x814f84

; FUNCTION 0x0036dd7c, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<unsigned int>
; alias: _ZN19NetStructMemberTypeIjE5EraseER12NetBitStream
; demangled: NetStructMemberType<unsigned int>::Erase(NetBitStream&)
; decoder-mode: arm
0036dd7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dd80  20 50 90 e5                                      ldr r5, [r0, #0x20]
0036dd84  00 40 a0 e1                                      mov r4, r0
0036dd88  df 9c 12 eb                                      bl #0x81510c
0036dd8c  20 50 84 e5                                      str r5, [r4, #0x20]
0036dd90  70 80 bd e8                                      pop {r4, r5, r6, pc}
