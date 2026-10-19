; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003db9dc, declared_size=168, range_size=168, mode=arm
; class-group: CharTimers::_Timer* std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: CharTimers::_Timer* std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::_M_allocate_and_copy<CharTimers::_Timer*>(unsigned int&, CharTimers::_Timer*, CharTimers::_Timer*)
; decoder-mode: arm
003db9dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003db9e0  08 00 80 e2                                      add r0, r0, #8
003db9e4  02 40 a0 e1                                      mov r4, r2
003db9e8  03 50 a0 e1                                      mov r5, r3
003db9ec  01 20 a0 e1                                      mov r2, r1
003db9f0  00 10 91 e5                                      ldr r1, [r1]
003db9f4  dc ff ff eb                                      bl #0x3db96c
003db9f8  05 50 64 e0                                      rsb r5, r4, r5
003db9fc  78 20 9f e5                                      ldr r2, [pc, #0x78]
003dba00  c5 52 a0 e1                                      asr r5, r5, #5
003dba04  00 00 55 e3                                      cmp r5, #0
003dba08  02 20 8f e0                                      add r2, pc, r2
003dba0c  19 00 00 da                                      ble #0x3dba78
003dba10  68 10 9f e5                                      ldr r1, [pc, #0x68]
003dba14  00 30 a0 e1                                      mov r3, r0
003dba18  01 10 92 e7                                      ldr r1, [r2, r1]
003dba1c  08 10 81 e2                                      add r1, r1, #8
003dba20  00 00 00 ea                                      b #0x3dba28
003dba24  20 30 83 e2                                      add r3, r3, #0x20
003dba28  00 10 83 e5                                      str r1, [r3]
003dba2c  04 20 94 e5                                      ldr r2, [r4, #4]
003dba30  01 50 55 e2                                      subs r5, r5, #1
003dba34  04 20 83 e5                                      str r2, [r3, #4]
003dba38  08 20 94 e5                                      ldr r2, [r4, #8]
003dba3c  08 20 83 e5                                      str r2, [r3, #8]
003dba40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003dba44  0c 20 83 e5                                      str r2, [r3, #0xc]
003dba48  10 20 94 e5                                      ldr r2, [r4, #0x10]
003dba4c  10 20 83 e5                                      str r2, [r3, #0x10]
003dba50  14 20 d4 e5                                      ldrb r2, [r4, #0x14]
003dba54  14 20 c3 e5                                      strb r2, [r3, #0x14]
003dba58  15 20 d4 e5                                      ldrb r2, [r4, #0x15]
003dba5c  15 20 c3 e5                                      strb r2, [r3, #0x15]
003dba60  18 20 94 e5                                      ldr r2, [r4, #0x18]
003dba64  18 20 83 e5                                      str r2, [r3, #0x18]
003dba68  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003dba6c  20 40 84 e2                                      add r4, r4, #0x20
003dba70  1c 20 83 e5                                      str r2, [r3, #0x1c]
003dba74  ea ff ff 1a                                      bne #0x3dba24
003dba78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dba7c  88 90 5b 00 88 38 00 00                          .byte 0x88, 0x90, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00
