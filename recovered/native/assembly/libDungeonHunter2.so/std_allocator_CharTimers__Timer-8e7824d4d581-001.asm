; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003db96c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<CharTimers::_Timer>
; alias: _ZNSaIN10CharTimers6_TimerEE11_M_allocateEjRj
; demangled: std::allocator<CharTimers::_Timer>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003db96c  10 40 2d e9                                      push {r4, lr}
003db970  7e 03 71 e3                                      cmn r1, #0xf8000001
003db974  08 d0 4d e2                                      sub sp, sp, #8
003db978  02 40 a0 e1                                      mov r4, r2
003db97c  10 00 00 8a                                      bhi #0x3db9c4
003db980  00 00 51 e3                                      cmp r1, #0
003db984  01 00 a0 01                                      moveq r0, r1
003db988  01 00 00 1a                                      bne #0x3db994
003db98c  08 d0 8d e2                                      add sp, sp, #8
003db990  10 80 bd e8                                      pop {r4, pc}
003db994  81 02 a0 e1                                      lsl r0, r1, #5
003db998  80 00 50 e3                                      cmp r0, #0x80
003db99c  04 00 8d e5                                      str r0, [sp, #4]
003db9a0  05 00 00 8a                                      bhi #0x3db9bc
003db9a4  04 00 8d e2                                      add r0, sp, #4
003db9a8  44 b5 0c eb                                      bl #0x708ec0
003db9ac  04 30 9d e5                                      ldr r3, [sp, #4]
003db9b0  a3 32 a0 e1                                      lsr r3, r3, #5
003db9b4  00 30 84 e5                                      str r3, [r4]
003db9b8  f3 ff ff ea                                      b #0x3db98c
003db9bc  a4 d2 fc eb                                      bl #0x310454
003db9c0  f9 ff ff ea                                      b #0x3db9ac
003db9c4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003db9c8  00 00 8f e0                                      add r0, pc, r0
003db9cc  bc c9 fc eb                                      bl #0x30e0c4
003db9d0  01 00 a0 e3                                      mov r0, #1
003db9d4  1b c9 fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003db9d8  a8 2a 4e 00                                      .byte 0xa8, 0x2a, 0x4e, 0x00
