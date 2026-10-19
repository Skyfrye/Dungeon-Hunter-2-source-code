; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a3574, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfED1Ev
; demangled: NetStructMemberType<float>::~NetStructMemberType()
; decoder-mode: arm
003a3574  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a364c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfE8GetValueEv
; demangled: NetStructMemberType<float>::GetValue()
; decoder-mode: arm
003a364c  20 00 80 e2                                      add r0, r0, #0x20
003a3650  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a36dc, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfE9TestValueERKf
; demangled: NetStructMemberType<float>::TestValue(float const&)
; decoder-mode: arm
003a36dc  01 00 a0 e3                                      mov r0, #1
003a36e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a3798, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfED0Ev
; demangled: NetStructMemberType<float>::~NetStructMemberType()
; decoder-mode: arm
003a3798  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a379c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a37a0  10 40 2d e9                                      push {r4, lr}
003a37a4  03 30 8f e0                                      add r3, pc, r3
003a37a8  02 20 93 e7                                      ldr r2, [r3, r2]
003a37ac  00 40 a0 e1                                      mov r4, r0
003a37b0  08 20 82 e2                                      add r2, r2, #8
003a37b4  00 20 80 e5                                      str r2, [r0]
003a37b8  20 b3 fd eb                                      bl #0x310440
003a37bc  04 00 a0 e1                                      mov r0, r4
003a37c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a37c4  ec 12 5f 00 a8 10 00 00                          .byte 0xec, 0x12, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3c30, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfE8SetValueERKf
; demangled: NetStructMemberType<float>::SetValue(float const&)
; decoder-mode: arm
003a3c30  70 40 2d e9                                      push {r4, r5, r6, lr}
003a3c34  00 50 91 e5                                      ldr r5, [r1]
003a3c38  00 40 a0 e1                                      mov r4, r0
003a3c3c  20 00 90 e5                                      ldr r0, [r0, #0x20]
003a3c40  05 10 a0 e1                                      mov r1, r5
003a3c44  d0 a8 fd eb                                      bl #0x30df8c
003a3c48  00 00 50 e3                                      cmp r0, #0
003a3c4c  00 00 00 0a                                      beq #0x3a3c54
003a3c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a3c54  04 00 a0 e1                                      mov r0, r4
003a3c58  20 50 84 e5                                      str r5, [r4, #0x20]
003a3c5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003a3c60  c7 c4 11 ea                                      b #0x814f84

; FUNCTION 0x003a3e4c, declared_size=24, range_size=24, mode=arm
; class-group: NetStructMemberType<float>
; alias: _ZN19NetStructMemberTypeIfE5EraseER12NetBitStream
; demangled: NetStructMemberType<float>::Erase(NetBitStream&)
; decoder-mode: arm
003a3e4c  70 40 2d e9                                      push {r4, r5, r6, lr}
003a3e50  20 50 90 e5                                      ldr r5, [r0, #0x20]
003a3e54  00 40 a0 e1                                      mov r4, r0
003a3e58  ab c4 11 eb                                      bl #0x81510c
003a3e5c  20 50 84 e5                                      str r5, [r4, #0x20]
003a3e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
